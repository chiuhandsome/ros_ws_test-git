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

#ifndef FETCH_AUTO_DOCK_PERCEPTION_H
#define FETCH_AUTO_DOCK_PERCEPTION_H

#include <open_auto_dock/dock_candidate.h>
#include <open_auto_dock/laser_processor.h>
#include <open_auto_dock/linear_pose_filter_2d.h>

#include <string>
#include <boost/thread.hpp>

#include <ros/ros.h>
#include <geometry_msgs/PoseStamped.h>
#include <sensor_msgs/LaserScan.h>
#include <tf/transform_listener.h>

#include <vector>
#include <deque>

enum dockshape_type{
         edockshape_standard = 0
    } ;


class DockPerception
{
    public:
        explicit DockPerception(ros::NodeHandle& nh);

        /**
        * @brief Start dock detection.
        * @param pose The initial estimate of dock pose
        */
        bool start(const geometry_msgs::PoseStamped& pose);

        /** @brief Stop tracking the dock. */
        bool stop();

        /** @brief Get the pose of the dock. */
        bool getPose(geometry_msgs::PoseStamped& pose, std::string frame = "");

        double create_dynamic_cloud(double left,double middle,double right,double bottom,double depth,double unit=0.005);
        double dock_left,dock_middle,dock_right,dock_bottom,dock_depth;
        void set_lidar_name(std::string name);
        double para_split_threshold;
    private:
        /** @brief Callback to process laser scans */
        void callback(const sensor_msgs::LaserScanConstPtr& scan);

        /**
        * @brief Extract a DockCandidate from a cluster, filling in the
        *        lengths and slopes of each line found using ransac.
        * @param cluster The pointer to the cluster to extract from.
        */
        DockCandidatePtr extract(laser_processor::SampleSet* cluster);

        /**
        * @brief Try to fit a dock to candidate
        * @param candidate The candidate to fit to.
        * @param pose The fitted pose, if successful.
        * @returns Fitness score (>0 if successful)
        */
        double fit(const DockCandidatePtr& candidate, geometry_msgs::Pose& pose);

        /**
        * @brief Method to check if the quaternion is valid.
        * @param q Quaternion to check.
        * @return True if quaternion is valid.
        */
        static bool isValid(const tf::Quaternion& q);

        ros::Subscriber scan_sub_;
        tf::TransformListener listener_;

        bool running_;  // Should we be trying to find the dock
        bool debug_;  // Should we output debugging info

        LinearPoseFilter2DPtr dock_pose_filter_;  /// Low pass filter object for filtering dock poses.

        // TF frame to track dock within
        std::string tracking_frame_;
        // Best estimate of where the dock is
        geometry_msgs::PoseStamped dock_;
        // Mutex on dock_
        boost::mutex dock_mutex_;
        // If true, then dock_ is based on actual sensor data
        bool found_dock_;
        // Last time that dock pose was updated
        ros::Time dock_stamp_;
        // Maximum allowable error between scan and "ideal" scan
        double max_alignment_error_;

        // Publish visualization of which points are detected as dock
        ros::Publisher debug_points_;

        // The ideal cloud, located at origin of dock frame
        std::vector<geometry_msgs::Point> ideal_cloud_;
        // The ideal cloud (when only front is visible)
        std::vector<geometry_msgs::Point> front_cloud_;
        //-- control parameter for dock_candidate (struct)----
        double para_width_min,para_width_max,para_dist_min,para_dist_max ;
        //-- control parameter for laser_proccess (namespace)----
        // double para_split_threshold;
        int para_remove_minpoints ;
        double para_mask_threshold;
        //-- control parameter for icp_2d(namespace)----
        int icp_max_iterations ;
        double icp_min_delta_rmsd,icp_corr_max_dist_check ;
        //-- control parameter
        int front_lidar_angel_min,front_lidar_angel_max;
        int fitfail_retry ;
        double para_getpos_timeout;
        double para_criteria_dist ;
        double para_criteria_width ;    //最小可確認的寬度

        void Create_idealcloud() ;
        void Create_idealcloud_Standard() ;
        void Read_CntParameters();
        void CreateFilter_Coefficient();

        ros::Publisher testcloud_points_;
        void setpub_testcloud_points(laser_processor::SampleSet* cluster,DockCandidatePtr testcandidate);
        void pub_testcloud_points(DockCandidatePtr testcandidate);
        //-- type of idealcloud ----
        dockshape_type actshape_type ;//= edockshape_standard ;
        double dock_front_length_Y ;
        double left_side_length_X,left_side_angle_X ;
        double right_side_length_X,right_side_angle_X ;
        void dockshape_typeSet(dockshape_type _dockshape_type);
        //-- coefficient vectors for a second order butterworth filter
        float filter_b_arr_0,filter_b_arr_1,filter_b_arr_2 ;
        float filter_a_arr_0,filter_a_arr_1,filter_a_arr_2 ;
        std::string lidar_scan_name ;
        std::complex<double> z1,z2;
        ros::NodeHandle nh_;
};

#endif  // FETCH_AUTO_DOCK_PERCEPTION_H
