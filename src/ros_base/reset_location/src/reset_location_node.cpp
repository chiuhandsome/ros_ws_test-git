#include "reset_location_node.h"
#include <math.h>
#include <chrono>
#include <thread>
#include <iostream>
#include <range/v3/view/all.hpp>
#include <range/v3/view/group_by.hpp>

ResetLocation::ResetLocation(ros::NodeHandle &nh) : nh_(nh)
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

	ph.param("lidar_intensity_threshold", lidar_intensity_threshold, 245.0); //final angle compensation
	listener_ = std::make_shared<tf2_ros::TransformListener>(transform_listener_ptr);

	lidar_base_xy = {lidar_shift_x, lidar_shift_y};
	yaw0 = lidar_theta; // + scan->angle_min ;
						//active = false;

	laser_scan_subscriber = nh_.subscribe(scan_topic, 40, &ResetLocation::laser_scan_callback, this);

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

tuple<double, double> ResetLocation::trilateration(double x1, double y1, double d1, double x2, double y2, double d2, double x3, double y3, double d3)
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

geometry_msgs::Point ResetLocation::GetPiontByThree(geometry_msgs::Point p1, geometry_msgs::Point p2, geometry_msgs::Point p3)
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

bool ResetLocation::calc_car_world_pose( const std::vector<Laser_Scan_Combind>&  processed_scan_data, const sensor_msgs::LaserScanConstPtr recent_scan )
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

	geometry_msgs::Point world_points[4 ];

	double scan_p_distance[4];

	world_points[0].x = tag1_x;
	world_points[0].y = tag1_y;
	world_points[1].x = tag2_x;
	world_points[1].y = tag2_y;
	world_points[2].x = tag3_x;
	world_points[2].y = tag3_y;

	geometry_msgs::PointStamped scan_point[4];
	geometry_msgs::PointStamped base_to_scan_point[4];

	geometry_msgs::PointStamped laser_position;
	geometry_msgs::PointStamped base_position;

	for (uint16_t view_index = 0; view_index< processed_scan_data.size(); view_index++)
	{
		
				//z = lidar_base_xy + std::polar<double>(recent_scan->ranges[i], yaw0 + scan->angle_increment * i);
				z = std::polar<double>(processed_scan_data[view_index].range, processed_scan_data[view_index].theta );

				scan_point[view_index].header = recent_scan->header;
				scan_point[view_index].point.x = real(z);
				scan_point[view_index].point.y = imag(z);
				scan_point[view_index].point.z = 0;
				scan_p_distance[view_index] = processed_scan_data[view_index].range ;

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

	std::complex<double> laser_cp( laser_world_position.x ,  laser_world_position.y );
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

	return true;
}

void ResetLocation::laser_scan_callback(const sensor_msgs::LaserScanConstPtr scan)
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

// **********************    M A I N    *************************

int main(int argc, char **argv)
{

	// Init ROS node
	ros::init(argc, argv, "reset_location");
	ros::NodeHandle nh;
	ResetLocation rl(nh);

	ros::spin();

	return 0;
}
