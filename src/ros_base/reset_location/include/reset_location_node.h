#ifndef RESET_LOCATION_NODE_H
#define RESET_LOCATION_NODE_H


#include <ros/ros.h>
#include <sensor_msgs/LaserScan.h>
#include <tf2/transform_datatypes.h>
#include <tf2/LinearMath/Transform.h>
#include <tf2_ros/transform_listener.h>
#include <tf2_ros/transform_broadcaster.h>
#include <tf2_geometry_msgs/tf2_geometry_msgs.h>
//#include <tf2_sensor_msgs/tf2_sensor_msgs.h>
#include <geometry_msgs/Point.h>

//#include "pointmatcher/PointMatcher.h"
//#include <cassert>

//#include "boost/filesystem.hpp"



using namespace std;

struct Laser_Scan_Combind
{
     double  range ;
     double  intensities ;
     double  theta ;
} ;
class ResetLocation
{
    //using PM = PointMatcher<float> ;
    //using  DP = PM::DataPoints ;
    //using  Label = DP::Label ;
    // using Labels = DP::Labels ;
    // using View = DP::View ;
     using TransformListenerPtr = std::shared_ptr<tf2_ros::TransformListener>;
     
public:
   ResetLocation(ros::NodeHandle& nh);
   ~ResetLocation(){};
   //void reconfigureCB(razor_imu_9dof::imuConfig& config, uint32_t level);
   //shared_ptr<sensor_msgs::Imu> parse_process_data(string& line) ;
   double getNumberFromXMLRPC(XmlRpc::XmlRpcValue& value) ;
   void getParameters() ;
   bool  calc_car_world_pose( const std::vector<Laser_Scan_Combind>&  processed_scan_data, const sensor_msgs::LaserScanConstPtr recent_scan  ) ;
private:
   
   geometry_msgs::Point  GetPiontByThree(geometry_msgs::Point p1,   geometry_msgs::Point p2, geometry_msgs::Point p3) ; 
   tuple<double, double> trilateration(double x1, double y1, double d1, double x2, double y2, double d2, double x3, double y3, double d3) ;

 
   void laser_scan_callback(const sensor_msgs::LaserScanConstPtr scan) ;

   std::vector<Laser_Scan_Combind> laser_scan_comb_v ; 
   ros::NodeHandle nh_ ;
   
    double lidar_shift_x,lidar_shift_y,lidar_theta,yaw0,close,pos_shift,compensation;
    double tag1_x , tag1_y ;
    double tag2_x , tag2_y ;
    double tag3_x , tag3_y ;

    double lidar_intensity_threshold ;

    std::string ref_locations_csv_path ;


    std::complex<double> lidar_base_xy  ,z;

    std::string  base_link_frame_id_ ;
    std::string  scan_topic ;
    
    // ros subscriber
    ros::Subscriber laser_scan_subscriber;
    
   

     tf2_ros::Buffer transform_listener_ptr;
    TransformListenerPtr listener_; //(listener);
     
        bool icp_done ;
};

#endif //RESET_LOCATION_NODE_H
