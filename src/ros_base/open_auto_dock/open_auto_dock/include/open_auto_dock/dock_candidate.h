//*****************************************************************************
//** Judge a cluster data whether to become a candidate                      **
//** Modify by Chiu Handsome        version: 1.0         date:2019.01.19     **
//** base on: fetch_open_auto_dock - dock_candidate.h                        **
//*****************************************************************************
#ifndef FETCH_AUTO_DOCK_DOCK_CANDIDATE_H
#define FETCH_AUTO_DOCK_DOCK_CANDIDATE_H
//-----------------------------------------------------------------------------
#include <geometry_msgs/Point.h>
#include <boost/shared_ptr.hpp>
#include <vector>
#include <ros/ros.h>
//
struct DockCandidate
{
	//-- declare control datas ----	
	std::vector<geometry_msgs::Point> points;
	double dist;  			// distance from initial/previous pose
	double width_min; 	// minimux for width of segment(group)- unit m
	double width_max; 	// maximux for width of segment(group)- unit m
	double dist_min;  	// minimux area of dist (m^2)
	double dist_max;  	// maximux of dist- unit m (initial pose)

	//-- Get the width of this segment ---
	double width()
	{
		// If there are no points then there is no width.
		if (points.empty())
		{
		  return 0;
		}
		// Because points has been sorted, we can take the distance of the segment 
		// from the first point and the last point.
		geometry_msgs::Point& pt1 = points.front();
		geometry_msgs::Point& pt2 = points.back();
		return (sqrt(pow((pt1.x - pt2.x), 2) + pow((pt1.y - pt2.y), 2)));
	}

	//-- Determine if this candidate meets our basic criteria ---
	//-- param dock_found is the dock been found in a previous frame 
	bool valid(bool dock_found)
	{
		// 1.If there are no points this cannot be valid.
		if (points.empty())
		{ ROS_INFO("points.empty[%lu]",points.size());
		  return false;
		}		
		// 2. Check width of this segment
		if (width() > width_max || width() < width_min){
      //ROS_INFO("width(%.3f) > width_max(%.3f) || < width_min(%.3f)",width(),width_max,width_min);			
		  return false;
		}
		//ROS_INFO("candidate width:%f [%f] %f ",width_min,width(),width_max);
		//ROS_INFO("candidate width123:%f [%f] %f ",width_min,width(),width_max);
		// 3. If dock is found, we want to avoid large jumps
		if (dock_found)
		{
      //ROS_INFO("dock_found[%u],dist[%.3f]<dist_min**[%.3f],return[%u]",dock_found,dist,dist_min*dist_min,dist < (dist_min*dist_min));
			//if(dist < (dist_min*dist_min))
			//	ROS_INFO("return,dock_found:%d [%f] %f ",(int)dock_found,dist,dist_min*dist_min);	
		  return dist < dist_min;
		}			
		//ROS_INFO("return,dock_found:%d [%f] %f ",(int)dock_found,dist,dist_min*dist_min);	
		// 4. Not too far off from initial pose
	  //ROS_INFO("dist[%f] < dist_max[%f] ",dist,dist_max);	
		return dist < dist_max ; 
	}

	//-- Set parameters of basic criteria ---
	void param_set(double _width_min,double _width_max,double _dist_min,double _dist_max)
	{
		width_min=_width_min;	// minimux for width of segment(group)- unit m
		width_max=_width_max;	// maximux for width of segment(group)- unit m
		dist_min=_dist_min ;	// minimux area of dist (m^2)
		dist_max=_dist_max  ;	// maximux of dist- unit m (initial pose)

	}
};
//--- set DockCandidate to shared_ptr for garbage collection
typedef boost::shared_ptr<DockCandidate> DockCandidatePtr;
//--- CompareCandidates for ascending sort - DockCandidatePtr 
struct CompareCandidates
{
  bool operator()(DockCandidatePtr a, DockCandidatePtr b)
  {
    return (a->dist > b->dist);
  }
};
//-----------------------------------------------------------------------------
#endif  
