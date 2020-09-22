//*****************************************************************************
//** dock 的 感知元件宣告 [class DockPerception]:訂閱 base_scan，動作程序如下      **
//** 1.等待 start條件成立[ActionLib sendgoal]，初始目標方向為正前方 pose           **
//** 2.if(dock_.header.frame_id != tracking_frame_) 需進行座標轉換（第一次）     **
//** 3.進行 Sample* -> SampleSet* cluster[ScanMask& mask_檢查] ->             **
//**   std::list<SampleSetConstPtr> clusters_ 之後前行[分群]及[刪除不合理的群]    **
//** 4.設定成為 candidater 的條件，將符合條件的資料（群）依降冪條件加入 candidates    **
//** 5.candidates 由 top 開始取其群，以 fit函式 來尋找 dock 的目標 pose,利用此的    **
//**   position及orientation做為 controller 的控制參數，fit 的控制邏輯如下:        **
//**   主要動作邏輯為 ICP : alignPCA-> alignSVD (iteration) -> pose 座標平移轉換  **
//**                      -> 取得 rmsd(均方根誤差,fitness)                      **
//**   條件成立條件 ：（1）0<fitness<max_alignment_error_ 且 
//**                (2) 和初始條件的夾角 < 90 度
//**   假若條件不成立，座標進行調後，重覆執行 的邏輯，最多執行次數為 fitfail_retry      **                
//*****************************************************************************

#include <open_auto_dock/icp_2d.h>
#include <open_auto_dock/perception.h>

#include <angles/angles.h>
#include <tf/tf.h>
#include <sensor_msgs/PointCloud2.h>
#include <sensor_msgs/point_cloud2_iterator.h>

#include <list>
#include <queue>
#include <string>
#include <vector>

#include <sstream>
//std::string lidar_raw_FileName = "/tmp/lidar_raw_FileName.txt";
//std::string lidar_split_FileName = "/tmp/lidar_split_FileName.txt";
//std::string lidar_moveout_FileName = "/tmp/lidar_moveout_FileName.txt";
const char* lidar_raw_FileName = "/tmp/lidar_raw_FileName.csv";
const char* lidar_split_FileName = "/tmp/lidar_split_FileName.csv";
const char* lidar_moveout_FileName = "/tmp/lidar_moveout_FileName.csv";
//-----------------------------------------------------------------------------
//---- Calculate the distance between two points  -----------------------------
double getPoseDistance(const geometry_msgs::Pose a,
                       const geometry_msgs::Pose b)
{
  double dx = a.position.x - b.position.x;
  double dy = a.position.y - b.position.y;
  return sqrt(dx*dx + dy*dy);
}
//-----------------------------------------------------------------------------
//------- DockPerception 建構函式------------------------------------------
//-- 1. 執行讀取參設定並建立butterworth filter的coefficient vectors及理想雲資料
//-- 2. 訂閱 lidar 相對應於 dock 的 LaserScan data 
//-- 3. 若偵錯條件成立，則發佈測試雲資料 --------------------------------------
DockPerception::DockPerception(ros::NodeHandle& nh) :
  running_(false),
  tracking_frame_("odom"),
  found_dock_(false)
{
    //-- read control parameter firstly then 
    // 1. Create coefficient vectors for a second order butterworth filter
    //    with a cutoff frequency of 10 Hz assuming the loop is updated at 50 Hz
    // 2. Create ideal cloud
    Read_CntParameters();
    CreateFilter_Coefficient();  
    Create_idealcloud();

    // Debugging publishers first
    if (debug_)
    {
        debug_points_ = nh.advertise<sensor_msgs::PointCloud2>("dock_points", 10);
    }

    // Init base_scan only after publishers are created
    scan_sub_ = nh.subscribe(lidar_scan_name, 1, &DockPerception::callback, this);
    //ROS_INFO_NAMED("perception","Dock perception initialized");
    //-- 增加發佈點雲的測試 ----
    //if (debug_)
        testcloud_points_ = nh.advertise<sensor_msgs::PointCloud2>("testcloud_points", 10);
}
//-----------------------------------------------------------------------------
//---- Create ideal cloud  ----------------------------------------------------
//-- 建立 理想雲資料 的比對資料 -----------------------------------------------------------
void DockPerception::Create_idealcloud_Standard()
{
    double increase(0.01);
    //-- Y方向：平面寬度 dock_front_length_Y cm --
    double fornt_y = dock_front_length_Y/100.0 ;
    for (double y = -fornt_y/2; y <= fornt_y/2; y += increase)
    {
        geometry_msgs::Point p;
        p.x = p.z = 0.0;
        p.y = y ;
        ideal_cloud_.push_back(p);
        front_cloud_.push_back(p);
    }  
    //-- 左側 X 方向 -----
    double yl,yl1,yr,yr1;
    double xl,xl1,xr,xr1;
    double theta = (left_side_angle_X*3.14159265/180.0) ;
    double factor = 1/tan(theta) ;
    double side_x = left_side_length_X/100.0 ;
    for (double x = 0.0; x < side_x ; x += increase)
    {
        geometry_msgs::Point p;
        p.x = x;
        p.y = -fornt_y/2 - x * factor ;
        p.z = 0.0;
        ideal_cloud_.push_back(p);

        yl = p.y;
        xl = p.x;
    }
    //-- 右側 x 方向 -----
    theta = (right_side_angle_X*3.14159265/180.0) ;
    factor = 1/tan(theta) ;
    side_x = right_side_length_X/100.0 ;
    for (double x = 0.0; x < side_x ; x += increase)
    {
        geometry_msgs::Point p;
        p.x = x;
        p.y = fornt_y/2 + x * factor;
        p.z = 0.0;
        ideal_cloud_.insert(ideal_cloud_.begin(), p);

        yr = p.y;
        xr = p.x;
    }
    //-- 以下為暫時測試的部份 ---
    double side_right(0.33);
    double side_left(0.065);
    for (double y = 0; y >= -side_right; y -= increase){
        geometry_msgs::Point p;
        p.x = side_x;
        p.y = yl+y;
        p.z = 0.0;
        ideal_cloud_.push_back(p);

        yl1 = p.y;
        xl1 = p.x;
    }
    for (double y = 0; y <= side_left; y += increase){
        geometry_msgs::Point p;
        p.x = side_x;
        p.y = yr+y;
        p.z = 0.0;
        ideal_cloud_.push_back(p);

        yr1 = p.y;
        xr1 = p.x;
    }
    //ROS_INFO("dock shape y %.3f,%.3f,%.3f,%.3f",yl1,yl,yr,yr1);
    //ROS_INFO("dock shape x %.3f,%.3f,%.3f,%.3f",xl1,xl,xr,xr1);
  /*  //-- Y方向：平面寬度 80 mm --
  for (double y = -0.04; y <= 0.04; y += 0.001)
  {
    geometry_msgs::Point p;
    p.x = p.z = 0.0;
    p.y = y;
    ideal_cloud_.push_back(p);
    front_cloud_.push_back(p);
  }
  //-- 兩側邊角度 32, Y 方向： 40/tan32 = 64 mm ，X方向： 40 mm
  double theta = (32.0*3.14159265/180.0) ;
  double factor = 1/tan(theta) ;
  for (double x = 0.0; x < 0.04 ; x += 0.001)
  {
    geometry_msgs::Point p;
    p.x = x;
    p.y = 0.04 + x * factor;
    p.z = 0.0;
    ideal_cloud_.push_back(p);
    p.y = -0.04 - x * factor;
    ideal_cloud_.insert(ideal_cloud_.begin(), p);
  }*/
}
//-----------------------------------------------------------------------------
//---- Create ideal cloud  ----------------------------------------------------
//-- 建立 理想雲資料 的比對資料 -----------------------------------------------------------
void DockPerception::Create_idealcloud()
{
    if(actshape_type == edockshape_standard)
        Create_idealcloud_Standard();
}
//-----------------------------------------------------------------------------
//---- read control parameters  ------------------------------------------------
//-- 讀取控制參 --------------------------------------------------------------------
void DockPerception::Read_CntParameters()
{
    ros::NodeHandle pnh("~");
    // Should we publish the debugging cloud
    if(!pnh.getParam("debug_", debug_))
        debug_ = false;
    //-- control parameter for dock_candidate (struct)----
    if(!pnh.getParam("para_width_min", para_width_min))
        para_width_min = 0.02;
    if(!pnh.getParam("para_width_max", para_width_max))
        para_width_max = 0.25;
    if(!pnh.getParam("para_dist_min", para_dist_min))
        para_dist_min = 0.12;
    if(!pnh.getParam("para_dist_max", para_dist_max))
        para_dist_max = 1.0;
    //-- control parameter for laser_procewss (namespace)----
    if(!pnh.getParam("para_split_threshold", para_split_threshold))
        para_split_threshold = 0.04;
    if(!pnh.getParam("para_remove_minpoints", para_remove_minpoints))
        para_remove_minpoints = 5;
    if(!pnh.getParam("para_mask_threshold", para_mask_threshold))
        para_mask_threshold = 0.03;
    // Limit the average reprojection error of points onto
    // the ideal dock. This prevents the robot docking
    // with something that is very un-dock-like.    
    if(!pnh.getParam("max_alignment_error_", max_alignment_error_))
        max_alignment_error_ = 0.01;
    //--- control parameter for icp data ---
    if(!pnh.getParam("icp_max_iterations", icp_max_iterations))
        icp_max_iterations = 0.04;
    if(!pnh.getParam("icp_min_delta_rmsd", icp_min_delta_rmsd))
        icp_min_delta_rmsd = 0.000001;
    if(!pnh.getParam("icp_corr_max_dist_check", icp_corr_max_dist_check))
        icp_corr_max_dist_check = 1.0;
    //--- control parameter
    if(!pnh.getParam("front_lidar_angel_min", front_lidar_angel_min))
        front_lidar_angel_min = 240;
    if(!pnh.getParam("front_lidar_angel_max", front_lidar_angel_max))
        front_lidar_angel_max = 300;
    if(!pnh.getParam("fitfail_retry", fitfail_retry))
        fitfail_retry = 5;
    if(!pnh.getParam("para_getpos_timeout", para_getpos_timeout))
        para_getpos_timeout = 0.35;
    if(!pnh.getParam("para_criteria_dist", para_criteria_dist))
        para_criteria_dist = 0.05;
    if(!pnh.getParam("para_criteria_width", para_criteria_width))   //ideal cloun 可確認的最小寬度  
        para_criteria_width = 0.1;
    if(!pnh.getParam("tracking_frame_", tracking_frame_))
        tracking_frame_ = "odom";
    int _shape_type = 0;
    if(!pnh.getParam("actshape_type", _shape_type))
        _shape_type = 0;
    actshape_type = (dockshape_type) _shape_type ;  

    if(!pnh.getParam("dock_front_length_Y", dock_front_length_Y))
        dock_front_length_Y = 8;
    if(!pnh.getParam("left_side_length_X", left_side_length_X))
        left_side_length_X = 4;
    if(!pnh.getParam("left_side_angle_X", left_side_angle_X))   //ideal cloun 可確認的最小寬度  
        left_side_angle_X = 32;
    if(!pnh.getParam("right_side_length_X", right_side_length_X))
        right_side_length_X = 4;
    if(!pnh.getParam("right_side_angle_X", right_side_angle_X))
        right_side_angle_X = 32;

    if(!pnh.getParam("filter_b_arr_0", filter_b_arr_0))
        filter_b_arr_0 = 0.20657;
    if(!pnh.getParam("filter_b_arr_1", filter_b_arr_1))
        filter_b_arr_1 = 0.41314;
    if(!pnh.getParam("filter_b_arr_2", filter_b_arr_2))   //ideal cloun 可確認的最小寬度  
        filter_b_arr_2 = 0.20657;
    if(!pnh.getParam("filter_a_arr_0", filter_a_arr_0))
        filter_a_arr_0 = 1.00000;
    if(!pnh.getParam("filter_a_arr_1", filter_a_arr_1))
        filter_a_arr_1 = -0.36953;
    if(!pnh.getParam("filter_a_arr_2", filter_a_arr_2))
        filter_a_arr_2 = 0.19582;
    if(!pnh.getParam("lidar_scan_name", lidar_scan_name))
        lidar_scan_name = "base_scan";

    /*ROS_INFO("DockPerception - filter_b_arr_0: [%f]", filter_b_arr_0);   
    ROS_INFO("DockPerception - front_lidar_angel_min: [%d]", front_lidar_angel_min); 
    ROS_INFO("DockPerception - front_lidar_angel_max: [%d]", front_lidar_angel_max); 
    */
}
//-----------------------------------------------------------------------------
//---- Create coefficient vectors for a second order butterworth filter--------
//-- 建立butterworth filter的coefficient vectors ---------------------------------
void DockPerception::CreateFilter_Coefficient()
{
    // Create coefficient vectors for a second order butterworth filter
    // with a cutoff frequency of 10 Hz assuming the loop is updated at 50 Hz
    // [b, a] = butter(order, cutoff_frequ/half_sampling_freq)
    // [b, a] = butter(2, 10/25)
    //float b_arr[] = {0.20657,  0.41314, 0.20657};
    //float a_arr[] = {1.00000, -0.36953, 0.19582};
    float b_arr[] = {filter_b_arr_0, filter_b_arr_1, filter_b_arr_2};
    float a_arr[] = {filter_a_arr_0, filter_a_arr_1, filter_a_arr_2};
    std::vector<float> b(b_arr, b_arr + sizeof(b_arr)/sizeof(float));
    std::vector<float> a(a_arr, a_arr + sizeof(a_arr)/sizeof(float));
    dock_pose_filter_.reset(new LinearPoseFilter2D(b, a));
}
//-----------------------------------------------------------------------------
//------- real run DockPerception detcection and calculation ------------------
//-- 傳入 dock goal （dock_）的 pose 的資料並在 callback 中向下執行 dock 的相關執行運算 ------------- 
bool DockPerception::start(const geometry_msgs::PoseStamped& pose)
{
    running_ = false;
    found_dock_ = false;
    dock_ = pose;
    running_ = true;
    return true;
}
//-----------------------------------------------------------------------------
//------- Stop DockPerception detcection and calculation ----------------------
bool DockPerception::stop()
{
    running_ = false;
    return true;
}
//-----------------------------------------------------------------------------
//-- 向 callback 取得目前 dock 的位姿 傳給 pose  ----------------------------------------
//-- 1.回傳值：false==>(1)找不到dock （2）處理時間逾時（3）取得的dock_.pose.orientation 不正確 
//-- 2.1的條件不成立(true) ==> 
//--   如果 有指定 frame ID ，則先對dock_進行作標轉換再給 pose ，無則直接給 pose 
bool DockPerception::getPose(geometry_msgs::PoseStamped& pose, std::string frame)
{
    // All of this requires a lock on the dock_
    boost::mutex::scoped_lock lock(dock_mutex_);
    //---------------------------------------
    if (!found_dock_)
        return false;
    if (ros::Time::now() > dock_stamp_ + ros::Duration(para_getpos_timeout))
    {
        ROS_INFO("dock_perception : Dock pose timed out");
        found_dock_ = false;
        return false;
    }
    // Check for a valid orientation.
    tf::Quaternion q;
    tf::quaternionMsgToTF(dock_.pose.orientation, q);
    if (!isValid(q))
    {
        ROS_ERROR_STREAM_NAMED("perception", 
                              "Dock orientation invalid.");
        ROS_DEBUG_STREAM_NAMED("perception",
                              "Quaternion magnitude is "
                              << q.length()
                              << " Quaternion is ["
                              << q.x() << ", " << q.y() << ", "
                              << q.z() << ", " << q.w() << "]"
                              );
        return false;
    }
    //-- 取得目前 dock 的位姿給 pose 
    pose = dock_;
    //-- 若有指定座標系統（frame ID）則進行轉換
    if (frame != "")
    {
        // Transform to desired frame
        try
        {
            listener_.waitForTransform(frame,
                                      pose.header.frame_id,
                                      pose.header.stamp,
                                      ros::Duration(0.1));
            listener_.transformPose(frame, pose, pose);
        }
        catch (tf::TransformException const &ex)
        {
            ROS_INFO("DockPerception tf::TransformException");
            ROS_WARN_STREAM_THROTTLE(1.0, "Couldn't transform dock pose");
            return false;
        }
    }

    return found_dock_;
}
//-----------------------------------------------------------------------------
//-- 訂閱 lidar lasersacn 的 callback function,當其佈一筆資料，就會執行一次 ----
//--1.等接收到 ActionLib 的 goal信號（running_ = true）才會向下執行 -------------------------- 
//--2.第一次或不合理的 dock_ 給 default 值 dock_.pose.orientation 方向為正前方，並
//--  依據傳入 scan 資料計算 dock_.pose.position
//--3.若 dock_.header.frame_id != tracking_frame_ 則做完座標轉換再給 dock_ 
//--4.依據傳入scan資料進行 mark（filter） 的條件將資料轉入 ScanProcessor(clusters_)
//--5.對 ScanProcessor(clusters_) 進行分群及除去不合理點數的群 cluster
//--6.建立一以距離 dist降冪排列的 candidates，並在 clusters_ 中以下列條件來檢查每一筆 cluster,
//--  如果其條件成立，則將該筆 cluster 加到 candidates
//--  （1）檢查該 cluster 的 segment 的 width ,其必需介於para_width_min及其必需介於para_width_max之間
//--  （2）如果有找到 dock,其成立的條件 dist < dist_min*dist_min
//--      如果未找到 dock,其成立的條件 dist < dist_max candidates
//--  
//--7.取得candidates的每一筆cluster資料（由上而下，表 segment 距離較大者優先-考慮效能）和 ideal cloud 做 shape 
//    match (即 icp 運算),若無找到 bestpose，則 return，其若有找到 bestpose 其所得結果為dock_，
//    並進行 dock_及 scan 的 header.stamp/header.frame_id 的更新 
//--8.若 !found_dock_ 表第一次執行，dock_.pose = best_pose;並進行 filter 的初始設定   
//    dock_pose_filter_->reset();dock_pose_filter_->setFilterState(dock_.pose, dock_.pose);
//--9.若 found_dock_，計算 dock_pose_及 best_pose間的距離 double d = getPoseDistance(dock_.pose, best_pose);
//    （1）d > para_criteria_dist，則 return 
//     (2) d <= para_criteria_dist  
//         dock_.pose 經過 second order butterworth filter 再輸出 dock_.pose = dock_pose_filter_->filter(best_pose);
//         dock_stamp_ = scan->header.stamp;  found_dock_ = true;  
void DockPerception::callback(const sensor_msgs::LaserScanConstPtr& scan)
{
    //ROS_INFO("DockPerception - front_lidar_angel_min: [%d]", front_lidar_angel_min); 
    //ROS_INFO("DockPerception - front_lidar_angel_max: [%d]", front_lidar_angel_max); 
    // Be lazy about search  
    if (!running_)
    {
        return;
    }
    //if(running_)
    //ROS_INFO("ActionLib sendgoal start ");
    //--2. 由 DockGoal（）來的指令初始值為 header is empty, or quaternion = (0 0 0 0)
    //--   利用以下的做法，讓初始 dock_指向車子的正前方，位置依 scan 的ranges及角度來算
    // Make sure goal is valid (orientation != 0 0 0 0)
    if (dock_.header.frame_id == "" ||
        (dock_.pose.orientation.z == 0.0 && dock_.pose.orientation.w == 0.0))
    {
        // Lock the dock_
        boost::mutex::scoped_lock lock(dock_mutex_);

        // If goal is invalid, set to a point directly ahead of robot
        //for (size_t i = scan->ranges.size()/2; i < scan->ranges.size(); i++)
        for (int i = front_lidar_angel_min; i < front_lidar_angel_max; i++)
        //for (size_t i = 0; i < scan->ranges.size(); i++)
        {   
            if (std::isfinite(scan->ranges[i]))
            {
              double angle = scan->angle_min + i * scan->angle_increment;
              dock_.header = scan->header;
              dock_.pose.position.x = cos(angle) * scan->ranges[i];
              dock_.pose.position.y = sin(angle) * scan->ranges[i];

              dock_.pose.orientation.x = 1.0;
              dock_.pose.orientation.y = 0.0;
              dock_.pose.orientation.z = 0.0;
              dock_.pose.orientation.w = 0.0;
              ROS_DEBUG_NAMED("dock_perception", "Set initial pose to (%f, %f, %f)",dock_.pose.position.x, dock_.pose.position.y,icp_2d::thetaFromQuaternion(dock_.pose.orientation));
              break;
            }
        }
    }

    // Make sure goal is in the tracking frame
    //ROS_INFO("dock_.header.frame_id != tracking_frame_"); 
    if (dock_.header.frame_id != tracking_frame_)
    {
        boost::mutex::scoped_lock lock(dock_mutex_);
        try
        {
            listener_.waitForTransform(tracking_frame_,
                                      dock_.header.frame_id,
                                      dock_.header.stamp,
                                      ros::Duration(0.1));
            listener_.transformPose(tracking_frame_, dock_, dock_);
        }
        catch (tf::TransformException const &ex)
        {
            ROS_INFO("tf::TransformException,return"); 
            ROS_WARN_STREAM_THROTTLE(1.0, "Couldn't transform dock pose to tracking frame");
            return;
        }
        ROS_DEBUG_NAMED("dock_perception", "Transformed initial pose to (%f, %f, %f)",
                        dock_.pose.position.x, dock_.pose.position.y,
                        icp_2d::thetaFromQuaternion(dock_.pose.orientation));
    }

    // Cluster the laser scan
    //-- 4.依據 scan 的資料依以下方式進行進行過濾 --
    //     4.1 將 scan 的資料依 header.seq中對應的ranges及角度轉成 sample 的格式
    //     4.2 依傳入的 mask 進行 sample 的篩選，本例其為空的，故全會加入cluster_ set中
    //     4.3 將cluster_的set加入到 clusters_ list 中
    laser_processor::ScanMask mask;
    laser_processor::ScanProcessor processor(*scan, mask,para_mask_threshold);
    //ROS_INFO("==== processor raw data ====");
    //processor.debugshow_clusters_(lidar_raw_FileName);

    //-- 5. 依據 split_threshold 的參數來過濾在 clusters_(list)中的每一個 cluster(set)的資料
    //--    5.1 檢查每一個 cluster_中每一點和其所有鄰近點的距離，若小於split_threshold，則保留於 群組中
    //--    5.2 每一個 cluster_檢查條件結束是（1）所有點都檢查完 （2）當鄰近點的 range 和本身比較大於 split_threshold
    //-- 6. 去除少於 minpoints 點數的群 cluster_   
    processor.splitConnected(para_split_threshold);//(0.04);  // TODO(enhancement) parameterize
    //ROS_INFO("==== processor splitConnected ====");
    //processor.debugshow_clusters_(lidar_split_FileName);
    processor.removeLessThan(para_remove_minpoints);//(5);
    //ROS_INFO("==== processor remove_minpoints ====");
    //processor.debugshow_clusters_(lidar_moveout_FileName);

    // Sort clusters based on distance to last dock
    // std::priority_queue<Type, Container, Functional> container : vector/deque, Functional : less/greater can overwrite
    //-- 7. 建立一個依距離排序的 candidates priority_queue，針對 clusters_ 中依以下條件來決定可成為 candidates 的 cluster_
    //      7.1 取己排序 points 的第一筆及最後一筆求其 width 的長度，若其距離 >widthmax 或 < widthmin 的設定值，則false 跳離
    //      7.2 7.1 的條件成立，若dock 有發現，則 dist < dist_min*dist_min 才可成為 candidates 的 cluster_
    //                               未發理，則 dist < dist_max candidates 的 cluster_
    //int testii = 0 ;
    //DockCandidatePtr testcandidate(new DockCandidate());
    std::priority_queue<DockCandidatePtr, std::vector<DockCandidatePtr>, CompareCandidates> candidates,defeat;
    for (std::list<laser_processor::SampleSet*>::iterator i = processor.getClusters().begin();
        i != processor.getClusters().end();
        i++)
    {
        DockCandidatePtr c = extract(*i);
        //ROS_INFO("candidate check:%d",(int)((*i)->header.seq));
        //-- 2019.01.21 modify by handsome --
        c->param_set(para_width_min,para_width_max,para_dist_min,para_dist_max);
        /*c->width_min=0.02;	// minimux for width of segment(group)- unit m
        c->width_max=0.25;	// maximux for width of segment(group)- unit m
        c->dist_min=0.25 ;	// minimux area of dist (m^2)
        c->dist_max=1.0  ;	// maximux of dist- unit m (initial pose)*/
        //-----------------------------------
        if (c && c->valid(found_dock_))
        {
            //ROS_INFO("candidate Add:%d",(int)((*i)->header.seq));
            candidates.push(c);
        }else{
            defeat.push(c);
        }
        //---- 點雲資料設定 ----
        //setpub_testcloud_points(*i,testcandidate);
    }
    if(candidates.empty() && defeat.size()){
      double last = defeat.top()->points.size()-1;
      std::complex<double> z1({defeat.top()->points[0].x,defeat.top()->points[0].y});
      std::complex<double> z2({defeat.top()->points[last].x,defeat.top()->points[last].y});
      ROS_INFO("candidates[%lu->0]defeat.top[%.2f,%.2f]dist[%.2f]width[%.2f]",processor.getClusters().size(),real(z1+z2)/2,imag(z1+z2)/2,defeat.top()->dist,abs(z1-z2));
    }
    ROS_DEBUG_STREAM_NAMED("dock_perception", "Extracted " << candidates.size() << " clusters");
    //---- 點雲資料發佈 ----
    //pub_testcloud_points(testcandidate);
    //ROS_INFO("candidate Add Finished");
    // Extract ICP pose/fit on best clusters
    //--8. 因 candidates 依距離做排序，故 取其 top 和 dock_.pose 來做 fit 的運算 -- 
    //     8.1 fit 分數 >0 記為 best = true ,best_pose = pose;
    //     8.2 反之，將 其標記為 not bad,並轉換為 pointcloud 並將其 publish,
    //     8.3 pop 這筆資料，進行下一筆 Candidate 的 fit 運算 
    DockCandidatePtr best;
    geometry_msgs::Pose best_pose;
    while (!candidates.empty())
    {
        geometry_msgs::Pose pose = dock_.pose;
        //ROS_INFO("candidates fit calibration");
        double score = fit(candidates.top(), pose);
        //ROS_INFO("fit score: %f",score);
        if (score >= 0)
        {
            //DockCandidatePtr testcandidate(new DockCandidate());
            //setpub_testcloud_points(candidates.top(),testcandidate);
            
            best = candidates.top();
            pub_testcloud_points(best);
            best_pose = pose;
            break;
        }
        else  // Let's see what's wrong with this point cloud.
        {
            //pub_testcloud_points(best);
            if (debug_)
            {
                DockCandidatePtr not_best = candidates.top();

                // Create point cloud
                sensor_msgs::PointCloud2 cloud;
                cloud.header.stamp = scan->header.stamp;
                cloud.header.frame_id = tracking_frame_;
                cloud.width = cloud.height = 0;

                // Allocate space for points
                sensor_msgs::PointCloud2Modifier cloud_mod(cloud);
                cloud_mod.setPointCloud2FieldsByString(1, "xyz");
                cloud_mod.resize(not_best->points.size());

                // Fill in points
                sensor_msgs::PointCloud2Iterator<float> cloud_iter(cloud, "x");
                for (size_t i = 0; i < not_best->points.size(); i++)
                {
                    cloud_iter[0] = not_best->points[i].x;
                    cloud_iter[1] = not_best->points[i].y;
                    cloud_iter[2] = not_best->points[i].z;
                    ++cloud_iter;
                }
                debug_points_.publish(cloud);
            }
        }
        candidates.pop();
    }

    // Did we find dock?
    if (!best)
    {
        //ROS_INFO("!best,return");
        ROS_DEBUG_NAMED("dock_perception", "DID NOT FIND THE DOCK");
        return;
    }

    ROS_DEBUG_NAMED("dock_perception", "Found the dock.");

    //--9. best,將 轉換為 pointcloud 並將其 publish
    // Update
    if (debug_)
    {
        // Create point cloud
        sensor_msgs::PointCloud2 cloud;
        cloud.header.stamp = scan->header.stamp;
        cloud.header.frame_id = tracking_frame_;
        cloud.width = cloud.height = 0;

        // Allocate space for points
        sensor_msgs::PointCloud2Modifier cloud_mod(cloud);
        cloud_mod.setPointCloud2FieldsByString(1, "xyz");
        cloud_mod.resize(best->points.size());

        // Fill in points
        sensor_msgs::PointCloud2Iterator<float> cloud_iter(cloud, "x");
        for (size_t i = 0; i < best->points.size(); i++)
        {
            cloud_iter[0] = best->points[i].x;
            cloud_iter[1] = best->points[i].y;
            cloud_iter[2] = best->points[i].z;
            ++cloud_iter;
        }
        debug_points_.publish(cloud);
    }

    // Everything after this modifies the dock_
    boost::mutex::scoped_lock lock(dock_mutex_);

    // Update stamp
    dock_.header.stamp = scan->header.stamp;
    dock_.header.frame_id = tracking_frame_;

    // If this is the first time we've found dock, take whole pose
    if (!found_dock_)
    {
        dock_.pose = best_pose;
        // Reset the dock pose filter.
        dock_pose_filter_->reset();
        // Set the filter state to the current pose estimate.
        dock_pose_filter_->setFilterState(dock_.pose, dock_.pose);
    }
    else
    {
        // Check that pose is not too far from current pose
        double d = getPoseDistance(dock_.pose, best_pose);
        //if (d > 0.05)
        if (d > para_criteria_dist)
        {
          //ROS_INFO("found_dock_,d > para_criteria_dist");  
          ROS_DEBUG_STREAM_NAMED("dock_perception", "Dock pose jumped: " << d);
          return;
        }
    }

    // Filter the pose esitmate.
    dock_.pose = dock_pose_filter_->filter(best_pose);
    dock_stamp_ = scan->header.stamp;
    found_dock_ = true;
}
//-----------------------------------------------------------------------------
//-- 利用傳入的 cluster 產生 DockCandidatePtr candidate
//-- 1.建立一個新的 candidate （DockCandidatePtr candidate(new DockCandidate());）
//-- 2.做 TF 轉換取得轉換矩陣 t_frame （依 tracking_frame_ 將 cluster -->t_frame,注意此 StampedTransform）
//-- 3.建一中繼 geometry_msgs::PointStamped pt，將 cluster 對應資料轉入，再利用 pt 和 t_frame 
//     做座標轉換結果存於 pt（中間需做pointMsgToTF->座標轉換，矩陣運算-> pointTFToMsg 轉換）,
//     再將 pt 內的每一點存到 candidate
//-- 4.計算 candidate->dist
DockCandidatePtr DockPerception::extract(laser_processor::SampleSet* cluster)
{
    DockCandidatePtr candidate(new DockCandidate());

    tf::Point tf_point;
    tf::StampedTransform t_frame;
    try
    {
        listener_.waitForTransform(tracking_frame_,
                                  cluster->header.frame_id,
                                  cluster->header.stamp,
                                  ros::Duration(0.1));
        listener_.lookupTransform(tracking_frame_,
                                  cluster->header.frame_id,
                                  ros::Time(0),
                                  t_frame);
    }
    catch (tf::TransformException const &ex)
    {
      ROS_WARN_STREAM_THROTTLE(1.0, "Couldn't transform laser point");
      return candidate;
    }
    // Transform each point into tracking frameprocessor
    size_t i = 0;
    for (laser_processor::SampleSet::iterator p = cluster->begin();
        p != cluster->end();
        p++, i++)
    {
        geometry_msgs::PointStamped pt;
        pt.header = cluster->header;
        pt.point.x = (*p)->x;
        pt.point.y = (*p)->y;
        pt.point.z = 0;
        // 要做座標轉換，兩者資料型態均需為 tf::Point 
        tf::pointMsgToTF(pt.point, tf_point);
        tf_point = t_frame*tf_point;
        //將tf::Point 轉換為 Point msg 型態 （pt.point），以利candidate操作 
        tf::pointTFToMsg(tf_point, pt.point);
        candidate->points.push_back(pt.point);
    }
    if(!found_dock_){
      dock_.pose.position.x = 0;
      dock_.pose.position.y = 0;
    }
    // Get distance from cloud center to previous pose
    geometry_msgs::Point centroid = icp_2d::getCentroid(candidate->points);
    double dx = centroid.x - dock_.pose.position.x;
    double dy = centroid.y - dock_.pose.position.y;
    candidate->dist = sqrt(dx*dx + dy*dy);

    return candidate;
}
//-----------------------------------------------------------------------------
//-- 形狀比對（shape match） 邏輯運算 ------------------------------------------------------
//--1.對傳入的 geometry_msgs::Pose& pose（此為初始位置，也是存放比對完的位置變數） 
//     （1）記錄 tf::Quaternion init_pose 初始 yaw
//         利用 quaternionMsgToTF 將 quaternion Msg（pose.orientation）-> tf::Quaternion 
//         後面的座標需以 tf::Quaternion 來計算 （轉換錯誤，return -1）
//     （2）轉換 pose -> geometry_msgs::Transform transform; 以利後面 icp 的遞廻計算
//--2.設定 ICP 比對的條件參數 （SVD 重覆執行的次數，和上次的均方根值（ideal 和 candidate）的最小差值）
//    執行 double fitness = icp_2d::alignICP(ideal_cloud_, candidate->points, transform); 
//    （1）利用 quaternionMsgToTF 將結果 quaternion Msg（transform.rotation）-> tf::Quaternion cand_pose 
//    （2）計算 cand_pose 及 init_pose 兩最大的 Eigen vector 夾角,若夾角>120度，則
//        transform.rotation = tf::createQuaternionMsgFromYaw(3.1415 + tf::getYaw(transform.rotation));
//    （3）假若 fitness > 0，則進行以下條件
//        （3.1）重覆執行指定次數的邏輯
//              [重覆次數未達到] 且 {[(1)轉出不合理的值]或[(2)計算出的角度 > 45 度]}
//        （3.2）重覆執行邏輯
//              （a.) 依執行次數，依續調 transform 平移及旋轉值，做為執行下一次 ICP的初始值 
//               (b.) fitness = icp_2d::alignICP(ideal_cloud_, candidate->points, transform);
//               (c.) 利用 quaternionMsgToTF 將結果 quaternion Msg（transform.rotation）-> tf::Quaternion cand_pose 
//              （d.）計算 cand_pose 及 init_pose 兩最大的 Eigen vector 夾角,若夾角>120度，則
//                    transform.rotation = tf::createQuaternionMsgFromYaw(3.1415 + tf::getYaw(transform.rotation));
//        (3.3)以下條件為 fit 失敗的條件，傳回值為 -1
//            （3.3.1）利用 quaternionMsgToTF 將結果 quaternion Msg（transform.rotation）-> tf::Quaternion cand_pose 
//                    其值轉換錯誤 ！isValid(cand_pose)
//            （3.3.2）計算 cand_pose 及 init_pose 兩最大的 Eigen vector 夾角,夾角>90度
//            （3.3.3）若不是第一次執行， fabs(fitness) > max_alignment_error_
//        (3.4)當 3.（3.3）的條件都不成立，但 candidate->width < para_criteria_width (可確認的寬度)為不可確認的條件
//             將 fitness = 0.001234 做此條件的區分  
//        (3.5)成立，進行座標更新
//             （3.5.1）ideal_cloud_依transform.translation,transform.rotation 做座標平移旋轉轉換來更新candidate->points
//             （3.5.2）做 pose.position = transform.translation 及 pose.orientation = transform.rotation 資料設定
//    (4) 假若 fitness <= 0，則 return -1

double DockPerception::fit(const DockCandidatePtr& candidate, geometry_msgs::Pose& pose)
{
    //ROS_INFO("fit:candidate width %f",candidate->width());
    // Setup initial pose
    //-- 以 dock_的 pose 設定初始轉移函式之值,其 orientation 做為yaw的初始設定
    geometry_msgs::Transform transform;
    transform.translation.x = pose.position.x;
    transform.translation.y = pose.position.y;
    transform.rotation = pose.orientation;

    // Initial yaw. Presumably the initial goal orientation estimate.  
    //ROS_INFO("fit:pose.orientation[%f,%f,%f,%f]",pose.orientation.w,pose.orientation.x,pose.orientation.y,pose.orientation.z);
    tf::Quaternion init_pose, cand_pose;
    quaternionMsgToTF(pose.orientation, init_pose);
    if (!isValid(init_pose))
    {
        ROS_ERROR_STREAM_NAMED("perception", 
                            "Initial dock orientation estimate is invalid.");
        ROS_DEBUG_STREAM_NAMED("perception",
                            "Quaternion magnitude is "
                            << init_pose.length()
                            << " Quaternion is ["
                            << init_pose.x() << ", " << init_pose.y() << ", "
                            << init_pose.z() << ", " << init_pose.w() << "]"
                            );
        //ROS_INFO("fit:Initial yaw isValid");
        return -1.0;
    }
    //ROS_INFO("fit:Initial yaw end");
    // ICP the dock
    //-- 以 candidate 的 points 和 ideal_cloud_ 利用 alignICP 求得其轉移函式
    //-- 其 轉移函式 的 orientation 做為candidate yaw 的初始設定
    icp_2d::icp_cntparameter_Set(icp_max_iterations,icp_min_delta_rmsd);
    double fitness = icp_2d::alignICP(ideal_cloud_, candidate->points, transform);//,icp_max_iterations,icp_min_delta_rmsd);
    
    //ROS_INFO("fit:candidate alignICP fitness %f",fitness);
    quaternionMsgToTF(transform.rotation, cand_pose);
    if (!isValid(cand_pose))
    {
        ROS_WARN_STREAM_NAMED("perception", 
                            "Dock candidate orientation estimate is invalid."); 
        ROS_DEBUG_STREAM_NAMED("perception", 
                            "Quaternion magnitude is "
                            << cand_pose.length()
                            << " Quaternion is ["
                            << cand_pose.x() << ", " << cand_pose.y() << ", "
                            << cand_pose.z() << ", " << cand_pose.w() << "]"
                            );
    }

    // If the dock orientation seems flipped, flip it.
    // Check it by finding the relative roation between the two quaternions.(note: matrix inverse means "subtract" init_pose from cand_pose)
    //-- 求 candidate yaw 和 pose（dock_）yaw 進行向量相減並算其相對應的夾角，若 > 120 度表車子需做對應的 flipper 處理 
    /*if (fabs(angles::normalize_angle(tf::getYaw(tf::inverse(cand_pose)*init_pose))) > 3.1415*(2.0/3.0) )  //兩向量相減，角度大於120度
    {
        transform.rotation = tf::createQuaternionMsgFromYaw(3.1415 + tf::getYaw(transform.rotation));
    }*/

    //-- fitness 的分數需大於 0 ，否則傳回 false   
    if (fitness >= 0.0)
    {
        //-- 在 fitness >= 0.0 的情況，以下情形會持續調整執行五次的計算
        //   1. fitness>max_alignment_error_ 或 
        //   2. candidate yaw 和 pose（dock_）yaw 進行向量相減並算其相對應的夾角 〉 45 度
        // Initialize the number of times we retry if the fitness is bad.
        //double retry = 5;
        int retry = fitfail_retry ;//5;
        // If the fitness is hosed or the angle is borked, try again.
        quaternionMsgToTF(transform.rotation, cand_pose);
        while (retry-- &&
            (
                fitness                                                       > max_alignment_error_ ||
                fabs(angles::normalize_angle(tf::getYaw(tf::inverse(cand_pose)*init_pose))) > 3.1415/4.0
                )
            )
        {
            // Try one more time.      
            // Perturb the pose to try to get it out of the local minima.
            //-- 依執行次數，依續降平移及旋轉值 
            transform.translation.x += retry*(0.75/100.0)*static_cast<double>((rand() % 200) - 100);
            transform.translation.y += retry*(0.75/100.0)*static_cast<double>((rand() % 200) - 100);
            transform.rotation = tf::createQuaternionMsgFromYaw(retry*(0.28/100.0)*double((rand() % 200) - 100) + tf::getYaw(transform.rotation));

            // Rerun ICP.
            //-- 執行 candidate 的 points 和 ideal_cloud_ 利用 alignICP 求得其轉移函式
            //   其 轉移函式 的 orientation 做為candidate yaw 的初始設定
            fitness = icp_2d::alignICP(ideal_cloud_, candidate->points, transform);//,icp_max_iterations,icp_min_delta_rmsd);

            // If the dock orientation seems flipped, flip it.
            //-- 求 candidate yaw 和 pose（dock_）yaw 進行向量相減並算其相對應的夾角，若 > 120 度表車子需做對應的 flipper 處理
            quaternionMsgToTF(transform.rotation, cand_pose);
            /*if (fabs(angles::normalize_angle(tf::getYaw(tf::inverse(cand_pose)*init_pose))) > 3.1415*(2.0/3.0) )
            {
                transform.rotation = tf::createQuaternionMsgFromYaw(3.1415 + tf::getYaw(transform.rotation));
            }*/

        }
        
        // If the dock orientation is still really borked, fail.
        quaternionMsgToTF(transform.rotation, cand_pose);
        if (!isValid(cand_pose))
        {
            ROS_ERROR_STREAM_NAMED("perception", 
                                    "Dock candidate orientation estimate is invalid.");
            ROS_DEBUG_STREAM_NAMED("perception","Quaternion magnitude is "
                                    << cand_pose.length()
                                    << " Orientation is ["
                                    << cand_pose.x() << ", " << cand_pose.y() << ", "
                                    << cand_pose.z() << ", " << cand_pose.w() << "]"
                                    );
            ROS_INFO("quaternionMsgToTF(transform.rotation, cand_pose)");
            return -1.0;
        }
        //   1. fitness>max_alignment_error_ 或 
        //   2. candidate yaw 和 pose（dock_）yaw 進行向量相減並算其相對應的夾角 〉 45 度
        //   不够好，fitness = -1.0;

        if (fabs(angles::normalize_angle(tf::getYaw(tf::inverse(cand_pose)*init_pose))) > (3.1415/2.0 +1.65))
        {
            double dAngle = angles::normalize_angle(tf::getYaw(tf::inverse(cand_pose)*init_pose));
            ROS_INFO("tf::getYaw(tf::inverse(cand_pose)*init_pose) [%f]",dAngle);
            fitness = -1.0;
        }

        // Check that fitness is good enough
        if (!found_dock_ && fabs(fitness) > max_alignment_error_)
        {
            ROS_INFO("!found_dock_ && fabs(fitness) > max_alignment_error_ [%d][%f][%f]",found_dock_,fabs(fitness),max_alignment_error_);
            // If not, signal no fit
            fitness = -1.0;
        }
        
        // If width of candidate is smaller than the width of dock
        // then the whole dock is not visible...
        //-- 0.375 (需參數化)不可信賴的 alignment,可能需用不同的 algorithm, fitness 固定為 001234
        if (candidate->width() < para_criteria_width)// 0.1 0.375)
        {
            //ROS_INFO("candidate->width() < para_criteria_width [%f][%f]",candidate->width(),para_criteria_width);
            // ... and heading is unreliable when close to dock
            ROS_DEBUG_STREAM_NAMED("perception", "Dock candidate width is unreliable.");
            transform.rotation = pose.orientation;
            //ROS_INFO("fitness = 0.001234 candidate->width(): %f ",candidate->width());
            fitness = 0.001234;
            // Probably can use a different algorithm here, if necessary, which it might not be.
        }

        // Transform ideal cloud, and store for visualization
        //-- 將 ideal_cloud_ points 資料依 transform 的資料進行座標的平移及旋轉轉換給 candidate->points
        //-- 將 transform 的資料指定給 pose (dock_) 
        candidate->points = icp_2d::transform(ideal_cloud_,
                                            transform.translation.x,
                                            transform.translation.y,
                                            icp_2d::thetaFromQuaternion(transform.rotation));

        // Get pose
        pose.position.x = transform.translation.x;
        pose.position.y = transform.translation.y;
        pose.position.z = transform.translation.z;
        pose.orientation = transform.rotation;

        /*ROS_INFO("fit result:[pose.position :%f,%f,%f][pose.orientation:%f,%f,%f,%f]",
                pose.position.x,pose.position.y,pose.position.z,
                pose.orientation.w,pose.orientation.x,pose.orientation.y,pose.orientation.z);
                */
        return fitness;
    }

    // Signal no fit
    ROS_DEBUG_NAMED("dock_perception", "Did not converge");
    //ROS_INFO_STREAM("Did not converge.");
    return -1.0;
                     
}
//-----------------------------------------------------------------------------
//-- 檢查 傳入 tf::Quaternion& q 值是否錯誤
bool DockPerception::isValid(const tf::Quaternion& q)
{
  return 1e-3 >= fabs(1.0 - q.length());
}

void DockPerception::setpub_testcloud_points(laser_processor::SampleSet* cluster,DockCandidatePtr testcandidate)
{   
  // ;
  //DockCandidatePtr testcandidate(new DockCandidate());
  //-- 進行 pointclound 轉換及發佈
  tf::Point tf_point;
  tf::StampedTransform t_frame;
  try
  {
    listener_.waitForTransform(tracking_frame_,
                               cluster->header.frame_id,
                               cluster->header.stamp,
                               ros::Duration(0.1));
    listener_.lookupTransform(tracking_frame_,
                              cluster->header.frame_id,
                              ros::Time(0),
                              t_frame);
  }
  catch (tf::TransformException const &ex)
  {
    ROS_WARN_STREAM_THROTTLE(1.0, "Couldn't transform laser point");
    //return candidate;
  }
  // Transform each point into tracking frame
  size_t i = 0;
  for (laser_processor::SampleSet::iterator p = cluster->begin();
       p != cluster->end();
       p++, i++)
  {
    //ROS_INFO("cluster->header stamp : %d",(int)cluster->header.stamp);
    geometry_msgs::PointStamped pt;
    pt.header = cluster->header;
    pt.point.x = (*p)->x;
    pt.point.y = (*p)->y;
    pt.point.z = 0;
    tf::pointMsgToTF(pt.point, tf_point);
    tf_point = t_frame*tf_point;
    tf::pointTFToMsg(tf_point, pt.point);
    testcandidate->points.push_back(pt.point);
  }
}
//-- 雲測試 publish ---
void DockPerception::pub_testcloud_points(DockCandidatePtr testcandidate)
{ 
  // Create point cloud
  sensor_msgs::PointCloud2 cloud;
  cloud.header.stamp = ros::Time(0);//cluster->header.stamp;
  cloud.header.frame_id = tracking_frame_;
  cloud.width = cloud.height = 0;

  // Allocate space for points
  sensor_msgs::PointCloud2Modifier cloud_mod(cloud);
  cloud_mod.setPointCloud2FieldsByString(1, "xyz");
  cloud_mod.resize(testcandidate->points.size());

  // Fill in points
  int pubnum = 0;
  sensor_msgs::PointCloud2Iterator<float> cloud_iter(cloud, "x");
  for (size_t i = 0; i < testcandidate->points.size(); i++)
  {
    cloud_iter[0] = testcandidate->points[i].x;
    cloud_iter[1] = testcandidate->points[i].y;
    cloud_iter[2] = testcandidate->points[i].z;
    ++cloud_iter;
    pubnum++;
  }
  //ROS_INFO("publish cloud number : %d",pubnum);
  testcloud_points_.publish(cloud);
}

void DockPerception::dockshape_typeSet(dockshape_type _dockshape_type)
{
  actshape_type = _dockshape_type ;
}
  //--- line of end -----------------------------------------------------------


