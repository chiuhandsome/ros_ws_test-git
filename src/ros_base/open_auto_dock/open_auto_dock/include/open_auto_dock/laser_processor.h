//*****************************************************************************
//** lidar scan transfer ptocess for sample/sample set(cluster)/clusters and **
//** algorithms of split and remove group                                    **
//** Modify by Chiu Handsome        version: 1.0         date:2019.01.19     **
//** base on: fetch_open_auto_dock - dock_candidate.h                        **
//*****************************************************************************

#ifndef FETCH_AUTO_DOCK_LASER_PROCESSOR_H
#define FETCH_AUTO_DOCK_LASER_PROCESSOR_H

#include <unistd.h>
#include <math.h>
#include "sensor_msgs/LaserScan.h"
#include "sensor_msgs/PointCloud.h"
#include "geometry_msgs/Point.h"

#include <list>
#include <set>
#include <vector>
#include <map>
#include <utility>
#include <algorithm>

#include "tf/transform_datatypes.h"

namespace laser_processor
{
	//*************************************************************************
	//** class [Sample] : 將 lidar傳入LaserScan 及 順序點轉成 sample 點資料      **
	//*************************************************************************
	/// A struct representing a single sample from the laser.
	class Sample
	{
		public:
		  int   index;
		  float range;
		  float intensity;
		  float x;
		  float y;

		  static Sample* Extract(int ind, const sensor_msgs::LaserScan& scan);

		private:
		  Sample() {};
	};
	//*************************************************************************
	//** class [SampleSet] : 會依內容型態為 class [Sample] 做降冪的std::set      **
	//*************************************************************************
	/// The comparator allowing the creation of an ordered "SampleSet"
	struct CompareSample
	{
		CompareSample() {}

		inline bool operator()(const Sample* a, const Sample* b)
		{
			return (a->index <  b->index);
		}
	};


	/// An ordered set of Samples
	class SampleSet : public std::set<Sample*, CompareSample>
	{
		public:
			SampleSet() {}

			~SampleSet()
			{
			clear();
			}

			void clear();

			void appendToCloud(sensor_msgs::PointCloud& cloud, int r = 0, int g = 0, int b = 0);

			tf::Point center();
			std_msgs::Header header;
	};
	//*************************************************************************
	//** class [ScanMask] : 檢查及過濾 lidar 傳入 LaserScan 的資料               **
	//** 1. 資料的正確性:-- scan.angle_min/scan.angle_max/scan.ranges.size()    **
	//** 2. 僅保留最小region 且不重覆的 Sample，作為 class ScanProcessor 增加      **
	//**    sample 時的過濾條件                                                 **
	//** 若為 NULL 表 ScanProcessor 不進行過濾條件                               **
	//*************************************************************************
	/// A mask for filtering out Samples based on range
	class ScanMask
	{
		SampleSet mask_;

		bool     filled;
		float    angle_min;
		float    angle_max;
		uint32_t size;

		public:
		  ScanMask() : filled(false), angle_min(0), angle_max(0), size(0) { }

		  inline void clear()
		  {
			mask_.clear();
			filled = false;
		  }

		  void addScan(sensor_msgs::LaserScan& scan);

		  bool hasSample(Sample* s, float thresh);
	};

	//*************************************************************************
	//** class [ScanProcessor] : 將 lidar傳入LaserScan 資料做以下的動作處理      **
	//** 1. Sample* -> SampleSet* cluster[ScanMask& mask_檢查] ->            **
	//**    std::list<SampleSetConstPtr> clusters_                          **
	//** 2. 提供分群及刪除不合理群的功能                                         **
	//*************************************************************************
	typedef SampleSet* SampleSetPtr;
	typedef SampleSet* SampleSetConstPtr;

	class ScanProcessor
	{
		std::list<SampleSetConstPtr> clusters_;
		sensor_msgs::LaserScan scan_;

		public:
			std::list<SampleSetConstPtr>& getClusters()
			{
				return clusters_;
			}

			ScanProcessor(const sensor_msgs::LaserScan& scan, ScanMask& mask_, float mask_threshold = 0.03);
			~ScanProcessor();

			void removeLessThan(uint32_t num);

			void splitConnected(float thresh);

      void Combinetempcloud();
			//--------------
			//void debugshow_clusters_(const char* act_FileName);
	};
};  // namespace laser_processor

#endif  // FETCH_AUTO_DOCK_LASER_PROCESSOR_H
