#include "reset_location_as_node.h"
#include <math.h>
#include <chrono>
#include <thread>
#include <iostream>
#include <range/v3/view/all.hpp>
#include <range/v3/view/group_by.hpp>

ResetLocationActionServer::ResetLocationActionServer(ros::NodeHandle &nh, std::string name) : nh_(nh), action_name_(name),
																							  as_(nh, name, std::bind(&ResetLocationActionServer::executeCB, this, std::placeholders::_1), false)

{

	ros::NodeHandle ph("~");

	ph.getParam("scan_topic", scan_topic);
	ph.getParam("base_link_frame", base_link_frame_id_);
	ph.getParam("ref_locations_csv_path", ref_locations_csv_path);
	ph.getParam("tag1_x", tag1_x);
	ph.getParam("tag1_y", tag1_y);
	ph.getParam("tag2_x", tag2_x);
	ph.getParam("tag2_y", tag2_y);
	ph.getParam("tag3_x", tag3_x);
	ph.getParam("tag3_y", tag3_y);

	ph.param("lidar_shift_x", lidar_shift_x, -0.225); //0.35
	ph.param("lidar_shift_y", lidar_shift_y, 0.0);	  //-0.205
	ph.param("lidar_theta", lidar_theta, -M_PI_2);	  //1.57
	ph.param("pos_shift", pos_shift, -0.205);
	ph.param("compensation", compensation, 0.0); //final angle compensation

	ph.param("lidar_intensity_threshold", lidar_intensity_threshold, 245.0); 
	ph.param("lidar_group_threshold", lidar_group_threshold, 5); //
    ph.param("tag1_group_points_threshold", tag1_group_points_threshold, 10); //

	
	listener_ = std::make_shared<tf2_ros::TransformListener>(transform_listener_ptr);

	lidar_base_xy = {lidar_shift_x, lidar_shift_y};
	yaw0 = lidar_theta; // + scan->angle_min ;
						//active = false;

	//laser_scan_subscriber = nh_.subscribe(scan_topic, 40, &ResetLocationActionServer::laser_scan_callback, this);

	as_.start();

	// featLabels.push_back(Label("x", 1));
	//isFeature.push_back(true);
	//featLabels.push_back(Label("y", 1));
	//isFeature.push_back(true);

	//featLabels.push_back(Label("pad", 1));

	//cloud.featureLabels = featLabels ;  // descLabels, 3);
	//cloud.descriptorLabels =   descLabels ;
	//cloud.features.resize(  cloud.featureLabels.totalDim() , 10  ) ;

	//cout << "ref_locations_csv_path:" << ref_locations_csv_path << endl;
	icp_done = false;

	//ref_cloud = DP::load(ref_locations_csv_path)  ;
	//cloud = DP::load(ref_locations_csv_path)  ;
}

void ResetLocationActionServer::executeCB(const reset_location::TrilaterationGoalConstPtr &goal)
{
	bool success = true;
	std::complex<double> position_avg(0, 0);
	std::complex<double> position_total(0, 0);
	double theta_avg = 0;
    int  correct_result_count = 0 ;
	int tag1_error_count = 0 ;
	int groups_error_count = 0 ;
	for (int cal_count = 0; cal_count < 30; cal_count++)
	{

		// check that preempt has not been requested by the client
		if (as_.isPreemptRequested() || !ros::ok())
		{
			ROS_INFO("%s: Preempted", action_name_.c_str());
			// set the action state to preempted
			as_.setPreempted();
			success = false;
			break;
		}
		feedback_.feedback = cal_count;
		// publish the feedback
		as_.publishFeedback(feedback_);

		sensor_msgs::LaserScanConstPtr recent_scan = ros::topic::waitForMessage<sensor_msgs::LaserScan>(scan_topic, nh_);

		for (uint16_t i = 0; i < recent_scan->ranges.size(); i++)
		{
			Laser_Scan_Combind lsc;

			if (recent_scan->intensities[i] >= lidar_intensity_threshold)
			{
				lsc.intensities = recent_scan->intensities[i];
				lsc.range = recent_scan->ranges[i];
				lsc.theta = yaw0 + i * recent_scan->angle_increment;
				laser_scan_comb_v.push_back(lsc);
			}
		}

		auto group_rng = laser_scan_comb_v | ranges::views::group_by([this, recent_scan](Laser_Scan_Combind x, Laser_Scan_Combind y) { return (abs(y.theta - x.theta) <= (recent_scan->angle_increment * this->lidar_group_threshold)); });

		auto tag1_group_points_ =  ranges::distance( group_rng.front()) ;
		if (tag1_group_points_ < tag1_group_points_threshold)
		{
			tag1_error_count++;
			if (tag1_error_count >= 20)
			{
				laser_scan_comb_v.clear();
				final_data.clear();
				result_.x = 0;
				result_.y = 0;
				result_.theta = 0;
				result_.error_code = -1;
				ROS_INFO("%s: Fail  error_code = %d" ,action_name_.c_str(), result_.error_code);
				// set the action state to aborted
				as_.setAborted(result_);
				success = false;
				break;
			}
		}
		auto groups_count =  ranges::distance( group_rng) ;

		if (groups_count < 3)
		{
			groups_error_count++;
			if (groups_error_count >= 20)
			{
				laser_scan_comb_v.clear();
				final_data.clear();
				result_.x = 0;
				result_.y = 0;
				result_.theta = 0;
				result_.error_code = -2;
				ROS_INFO("%s: Fail  error_code = %d", action_name_.c_str(), result_.error_code);
				// set the action state to aborted
				as_.setAborted(result_);
				success = false;
				break;
			}
		}

		Laser_Scan_Combind lsc;
		int outter_count = 0;
		double avg_distance = 0;
		double avg_theta = 0;
		auto i = group_rng.begin();
		auto e = group_rng.end();
		for (; i != e; ++i)
		{
			outter_count++;
			int inner_count = 0;
			auto inner_first = (*i).begin();
			auto inner_last = (*i).end();
			for (; inner_first != inner_last; ++inner_first)
			{
				inner_count++;
				avg_distance += (*inner_first).range;
				avg_theta += (*inner_first).theta;
			}
			Laser_Scan_Combind lsc;
			lsc.range = avg_distance / inner_count;
			lsc.theta = avg_theta / inner_count;
			avg_distance = 0;
			avg_theta = 0;
			final_data.push_back(lsc);
		}
		if (outter_count  != 3)
		{
			laser_scan_comb_v.clear();
			final_data.clear();
			continue;
		}
		correct_result_count ++ ;
		geometry_msgs::Point point_ = calc_car_world_pose(final_data, recent_scan, goal);
		position_total += std::complex<double>(point_.x, point_.y);
		theta_avg += point_.z;
	}

	if (success)
	{
		position_avg = position_total / (correct_result_count /1.0);
		theta_avg = theta_avg / correct_result_count ;
		result_.x = position_avg.real();
		result_.y = position_avg.imag();
		result_.theta = theta_avg;
		result_.error_code  =  0;
		ROS_INFO("%s: Succeeded  correct_result_count = %d", action_name_.c_str()   ,correct_result_count);
		// set the action state to succeeded
		as_.setSucceeded(result_);
	}
}

tuple<double, double> ResetLocationActionServer::trilateration(double x1, double y1, double d1, double x2, double y2, double d2, double x3, double y3, double d3)
{
	double d[2] = {0.0, 0.0};
	double a11 = 2 * (x1 - x3);
	double a12 = 2 * (y1 - y3);
	double b1 = pow(x1, 2) - pow(x3, 2) + pow(y1, 2) - pow(y3, 2) + pow(d3, 2) - pow(d1, 2);
	double a21 = 2 * (x2 - x3);
	double a22 = 2 * (y2 - y3);
	double b2 = pow(x2, 2) - pow(x3, 2) + pow(y2, 2) - pow(y3, 2) + pow(d3, 2) - pow(d2, 2);
	d[0] = (b1 * a22 - a12 * b2) / (a11 * a22 - a12 * a21);
	d[1] = (a11 * b2 - b1 * a21) / (a11 * a22 - a12 * a21);
	return {d[0], d[1]};
}

geometry_msgs::Point ResetLocationActionServer::GetPiontByThree(geometry_msgs::Point p1, geometry_msgs::Point p2, geometry_msgs::Point p3)
{
	auto A = p1.x - p3.x;
	auto B = p1.y - p3.y;
	auto C = pow(p1.x, 2) - pow(p3.x, 2) + pow(p1.y, 2) - pow(p3.y, 2) + pow(p3.z, 2) - pow(p1.z, 2);
	auto D = p2.x - p3.x;
	auto E = p2.y - p3.y;
	auto F = pow(p2.x, 2) - pow(p3.x, 2) + pow(p2.y, 2) - pow(p3.y, 2) + pow(p3.z, 2) - pow(p2.z, 2);

	auto x = (B * F - E * C) / (2 * B * D - 2 * A * E);
	auto y = (A * F - D * C) / (2 * A * E - 2 * B * D);

	geometry_msgs::Point P;
	P.x = x;
	P.y = y;
	P.z = 0;
	return P;
}

geometry_msgs::Point ResetLocationActionServer::calc_car_world_pose(const std::vector<Laser_Scan_Combind> &processed_scan_data, const sensor_msgs::LaserScanConstPtr recent_scan, const reset_location::TrilaterationGoalConstPtr &goal)
{

	icp_done = false;
	//sensor_msgs::LaserScanConstPtr recent_scan =
	//	ros::topic::waitForMessage<sensor_msgs::LaserScan>(scan_topic, nh_);

	geometry_msgs::TransformStamped target_to_base_laser_tf;

	try
	{
		transform_listener_ptr.canTransform(base_link_frame_id_, recent_scan->header.frame_id, ros::Time::now(), ros::Duration(6.0));
		target_to_base_laser_tf = transform_listener_ptr.lookupTransform(base_link_frame_id_, recent_scan->header.frame_id, ros::Time(0));
	}
	catch (tf2::TransformException ex)
	{
		ROS_ERROR("%s", ex.what());
	}

	geometry_msgs::Point world_points[3];

	double scan_p_distance[4];

	world_points[0].x = goal->tag1_x;
	world_points[0].y = goal->tag1_y;
	world_points[1].x = goal->tag2_x;
	world_points[1].y = goal->tag2_y;
	world_points[2].x = goal->tag3_x;
	world_points[2].y = goal->tag3_y;

	geometry_msgs::PointStamped scan_point[4];
	geometry_msgs::PointStamped base_to_scan_point[4];

	geometry_msgs::PointStamped laser_position;
	geometry_msgs::PointStamped base_position;

	for (uint16_t view_index = 0; view_index < processed_scan_data.size(); view_index++)
	{

		//z = lidar_base_xy + std::polar<double>(recent_scan->ranges[i], yaw0 + scan->angle_increment * i);
		z = std::polar<double>(processed_scan_data[view_index].range, processed_scan_data[view_index].theta);

		scan_point[view_index].header = recent_scan->header;
		scan_point[view_index].point.x = real(z);
		scan_point[view_index].point.y = imag(z);
		scan_point[view_index].point.z = 0;
		scan_p_distance[view_index] = processed_scan_data[view_index].range;

		tf2::doTransform(scan_point[view_index], base_to_scan_point[view_index], target_to_base_laser_tf); //laser -> base

		//cout << "scan x:" << real(z) << endl;
		//cout << "scan y:" << imag(z) << endl;
		//cout << "scan Distance:" << processed_scan_data[view_index].range << endl;

		world_points[view_index].z = sqrt(pow(base_to_scan_point[view_index].point.x, 2) + pow(base_to_scan_point[view_index].point.y, 2));

		//cout << "base x:" << base_to_scan_point[view_index].point.x << endl;
		//cout << "base y:" << base_to_scan_point[view_index].point.y << endl;
		//cout << "base Distance:" << world_points[view_index].z << endl;

		//cout << "view_index:" << view_index << endl;
	}
	//tuple<double,double> car_p = trilateration(p[0].X , p[0].Y,p[0].Distance,p[1].X , p[1].Y,p[1].Distance,p[2].X , p[2].Y,p[2].Distance) ;

	geometry_msgs::Point car_base_world_position = GetPiontByThree(world_points[0], world_points[1], world_points[2]);

	world_points[0].z = scan_p_distance[0];
	world_points[1].z = scan_p_distance[1];
	world_points[2].z = scan_p_distance[2];
	geometry_msgs::Point laser_world_position = GetPiontByThree(world_points[0], world_points[1], world_points[2]);

	//cout << "car_base_world_position x:" << car_base_world_position.x << endl;
	//cout << "car_base_world_position y:" << car_base_world_position.y << endl;

	//cout << "laser_world_position x:" << laser_world_position.x << endl;
	//cout << "laser_world_position y:" << laser_world_position.y << endl;

	std::complex<double> laser_cp(laser_world_position.x, laser_world_position.y);
	std::complex<double> base_cp(car_base_world_position.x, car_base_world_position.y);

	std::complex<double> base_laser_v = laser_cp - base_cp;

	//cout << "base_laser_v x:" <<real(base_laser_v) << endl;
	//cout << "base_laser_v y:" << imag(base_laser_v) << endl;

	double theta = std::arg(base_laser_v);

	//cout << "car_base_theta:" << theta << endl;

	//tf2::Quaternion myQuaternion{};
	//myQuaternion.setRPY( 0, 0, theta );
	//cout << "x:" <<  myQuaternion .getX()  <<  " y: " <<  myQuaternion .getY()  <<  " z: " <<  myQuaternion .getZ() << " w:'" << myQuaternion .getW() << endl;

	//std::this_thread::sleep_for(2s);

	geometry_msgs::Point result;
	result.x = car_base_world_position.x;
	result.y = car_base_world_position.y;
	result.z = theta;
	return result;
}

#if 0
void ResetLocationActionServer::laser_scan_callback(const sensor_msgs::LaserScanConstPtr scan)
{
	
      
	for (uint16_t i = 0; i < scan->ranges.size(); i++)
	{
		 Laser_Scan_Combind  lsc ;

		 
		if (scan->intensities[i] >= lidar_intensity_threshold)
		{
               lsc.intensities = scan->intensities[i]  ;
			   lsc.range = scan->ranges[i] ;
			   lsc.theta   = yaw0 +  i * scan->angle_increment ;
			   laser_scan_comb_v.push_back(lsc) ;
		}
	}

	//  int idx = 0 ;
    //for(auto f :  laser_scan_comb_v)
	//{
	//	idx++ ; 
	//	cout << " f "<<  idx << "_range = " <<   f.range << endl ; 	
//		cout << " f" << idx << "_theta= " <<      f.theta  << endl ; 	
//	}


	//auto  rng = laser_scan_comb_v | ranges::views::all;
   
	auto group_rng =  laser_scan_comb_v | ranges::views::group_by([scan](Laser_Scan_Combind x, Laser_Scan_Combind y) { 
                                             return (  abs(y.theta - x.theta)  <=  scan->angle_increment*4) ; }); 

    

    std::vector<Laser_Scan_Combind>  final_data ;
	Laser_Scan_Combind lsc ;
	 int outter_count = 0 ; 
	 double avg_distance  = 0;
	 double avg_theta = 0 ;
    auto i = group_rng.begin();
    auto e = group_rng.end();
	for (; i != e; ++i)
	{
		int inner_count = 0;
		auto inner_first = (*i).begin();
		auto inner_last = (*i).end();
		for (; inner_first != inner_last; ++inner_first)
		{
			inner_count++;
			avg_distance += (*inner_first).range;
			avg_theta += (*inner_first).theta;
		}
		Laser_Scan_Combind lsc ;
				   lsc.range =  avg_distance /  inner_count ;
				   lsc.theta  = avg_theta /  inner_count ;
				   avg_distance  = 0;
	               avg_theta = 0 ;
                   final_data.push_back(lsc) ;
	}
			 
    //   int idx = 0 ;
    //for(auto f :  final_data)
	//{
	//	idx++ ; 
	//	cout << " f "<<  idx << "_range = " <<   f.range << endl ; 	
	//	cout << " f" << idx << "_theta= " <<      f.theta  << endl ; 	
	//}

			
		icp_done = calc_car_world_pose( final_data, scan);

		
		 laser_scan_comb_v.clear() ;
		 final_data.clear() ;
}
#endif
// **********************    M A I N    *************************

int main(int argc, char **argv)
{

	// Init ROS node
	ros::init(argc, argv, "reset_location");
	ros::NodeHandle nh;
	ResetLocationActionServer rl(nh, "reset_location_as");

	ros::spin();

	return 0;
}
