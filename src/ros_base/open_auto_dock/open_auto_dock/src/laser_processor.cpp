//*****************************************************************************
//** lidar scan transfer ptocess for sample/sample set(cluster)/clusters and **
//** algorithms of split and remove group                                    **
//** Modify by Chiu Handsome        version: 1.0         date:2019.01.19     **
//** base on: fetch_open_auto_dock - dock_candidate.h                        **
//*****************************************************************************

#include <open_auto_dock/laser_processor.h>
#include <stdexcept>

#include <list>
#include <set>
//----------------------------------------------------------------------------
namespace laser_processor
{
    //*************************************************************************
    //** class [Sample] : 將 lidar傳入LaserScan 及 順序點轉成 sample 點資料      **
    //*************************************************************************
    //-----------------------------------------------------------------------------
    //-- 將 lidar scan 的信號中指定ranges的第ind筆 range的資料轉成 Sample 結構，並將其回傳 --
    //-- 若轉出的 x,y 位置不在scan.angle_min及scan.range_max之間 ，則傳回 NULL
    Sample* Sample::Extract(int ind, const sensor_msgs::LaserScan& scan)
    {
        Sample* s = new Sample();

        s->index = ind;
        s->range = scan.ranges[ind];
        s->x = cos(scan.angle_min + ind * scan.angle_increment) * s->range;//r*cos(theta)
        s->y = sin(scan.angle_min + ind * scan.angle_increment) * s->range;//r*sin(theta)
        if (s->range > scan.range_min && s->range < scan.range_max)
            return s;
        else
        {
            delete s;
            return NULL;
        }
    }
    //-------------------------------------------------------------------------
    //*************************************************************************
    //** class [SampleSet] : 會依內容型態為 class [Sample] 做降冪的std::set      **
    //*************************************************************************
    //-----------------------------------------------------------------------------
    //-- 清除 SampleSet 內所有 Sample 的資料 --
    void SampleSet::clear()
    {
        for (SampleSet::iterator i = begin();
            i != end();
            i++)
        {
            delete(*i);
        }
        set<Sample*, CompareSample>::clear();
    }
    //-----------------------------------------------------------------------------
    //-- 將 SampleSet 所有資料存入指定的 點雲 中
    void SampleSet::appendToCloud(sensor_msgs::PointCloud& cloud, int r, int g, int b)
    {
        float color_val = 0;

        int rgb = (r << 16) | (g << 8) | b;
        color_val = *reinterpret_cast<float*>(&rgb);

        for (iterator sample_iter = begin();
            sample_iter != end();
            sample_iter++)
        {
            geometry_msgs::Point32 point;
            point.x = (*sample_iter)->x;
            point.y = (*sample_iter)->y;
            point.z = 0;

            cloud.points.push_back(point);

            if (cloud.channels[0].name == "rgb")
                cloud.channels[0].values.push_back(color_val);
        }
    }
    //-----------------------------------------------------------------------------
    //-- 傳回 SampleSet 的組中心 -----
    tf::Point SampleSet::center()
    {
        float x_mean = 0.0;
        float y_mean = 0.0;
        for (iterator i = begin();
            i != end();
            i++)

        {
            x_mean += ((*i)->x) / size();
            y_mean += ((*i)->y) / size();
        }

        return tf::Point(x_mean, y_mean, 0.0);
    }
    //-----------------------------------------------------------------------------
    //*************************************************************************
    //** class [ScanMask] : 檢查及過濾 lidar 傳入 LaserScan 的資料               **
    //** 1. 資料的正確性:-- scan.angle_min/scan.angle_max/scan.ranges.size()    **
    //** 2. 僅保留最小region 且不重覆的 Sample，作為 class ScanProcessor 增加      **
    //**    sample 時的過濾條件                                                 **
    //** 若為 NULL 表 ScanProcessor 不進行過濾條件                               **
    //*************************************************************************
    //-----------------------------------------------------------------------------
    //-- 將 lidar scan 的信號 ranges的所有資料一一轉成 Sample 結構然後存入 SampleSet 容器中 (mask_)  -----
    void ScanMask::addScan(sensor_msgs::LaserScan& scan)
    {
        if (!filled)  //第一筆資料
        {
            angle_min = scan.angle_min;
            angle_max = scan.angle_max;
            size      = scan.ranges.size();
            filled    = true;
        }
        else if (angle_min != scan.angle_min     || //第一筆以後的資料判斷
                angle_max != scan.angle_max     ||
                size      != scan.ranges.size())
        {
            throw std::runtime_error("laser_scan::ScanMask::addScan: inconsistantly sized scans added to mask");
        }

        for (uint32_t i = 0; i < scan.ranges.size(); i++)
        {
            Sample* s = Sample::Extract(i, scan);

            if (s != NULL)
            {
                SampleSet::iterator m = mask_.find(s);
                //資料己存在，保留range較小者
                if (m != mask_.end())
                {
                    if ((*m)->range > s->range)
                    {
                        delete(*m);
                        mask_.erase(m);
                        mask_.insert(s);
                    }
                    else
                    {
                        delete s;
                    }
                }
                //資料未存在，直接新增
                else
                {
                    mask_.insert(s);
                }
            }
        }
    }
    //-----------------------------------------------------------------------------
    //-- 傳入指定的 Sample s,若 SampleSet(mask_)存在且和內存存在的range 比較小於指定的 threshold
    //-- 則表示 sample 存在，反之則不存在
    bool ScanMask::hasSample(Sample* s, float thresh)
    {
        if (s != NULL)
        {
            SampleSet::iterator m = mask_.find(s);
            if (m != mask_.end())
              if (((*m)->range - thresh) < s->range)
                  return true;
        }
        return false;
    }
    //-----------------------------------------------------------------------------
    //*************************************************************************
    //** class [ScanProcessor] : 將 lidar傳入LaserScan 資料做以下的動作處理      **
    //** 1. Sample* -> SampleSet* cluster[ScanMask& mask_檢查] ->            **
    //**    std::list<SampleSetConstPtr> clusters_                          **
    //** 2. 提供分群及刪除不合理群的功能                                         **
    //*************************************************************************
    //-----------------------------------------------------------------------------
    //-- 建構函式 :將 lidar scan 的信號 ranges的所有資料一一轉成 Sample 結構然後存入 SampleSet 容器中 (cluster)  -----
    //-- 此轉出的信號，在 mask_未存在此 sample,則新增，反之，則刪除
    //-- 完成後，將 SampleSet（cluster）存入  std::list<SampleSetConstPtr> clusters_ 中（typedef SampleSet* SampleSetConstPtr;）
    ScanProcessor::ScanProcessor(const sensor_msgs::LaserScan& scan, ScanMask& mask_, float mask_threshold)
    {
        scan_ = scan;

        SampleSet* cluster = new SampleSet;
        cluster->header = scan.header;

        //for (uint32_t i = 0; i < scan.ranges.size(); i++)
        for (uint32_t i = 0; i < scan.ranges.size(); i++)
        {
            Sample* s = Sample::Extract(i, scan);

            if (s != NULL)
            {
                //-- 此轉出的信號，在 mask_未存在此 sample,則新增，反之，則刪除
                if (!mask_.hasSample(s, mask_threshold))
                {
                    cluster->insert(s);
                }
                else
                {
                    delete s;
                }
            }
        }
        //from 0->90
        /*
        for (uint32_t i = 0; i < scan.ranges.size()/2; i++)
        {
            Sample* s = Sample::Extract(i, scan);

            if (s != NULL)
            {
                    cluster->insert(s);
            }
        }*/
        clusters_.push_back(cluster);
    }
    //-----------------------------------------------------------------------------
    //-- 解構函式 :清除 std::list<SampleSetConstPtr> clusters_ 內所有資料
    ScanProcessor::~ScanProcessor()
    {
        for (std::list<SampleSet*>::iterator c = clusters_.begin();
            c != clusters_.end(); c++)
        delete(*c);
    }
    //-----------------------------------------------------------------------------
    //-- 清除 std::list<SampleSetConstPtr> clusters_ 內所有cluster(SampleSet)小於指定筆數（num）的資料
    void ScanProcessor::removeLessThan(uint32_t num)
    {
        std::list<SampleSet*>::iterator c_iter = clusters_.begin();
        while (c_iter != clusters_.end())
        {
            if ((*c_iter)->size() < num)
            {
                delete(*c_iter);
                clusters_.erase(c_iter++);
            }
            else
            {
                ++c_iter;
            }
        }
    }
    //-----------------------------------------------------------------------------
    //-- 進行 std::list<SampleSet*> clusters_ 內中的每一 clusters 的分群
    //-- 換群的條件 -- 鄰近點 ((*s_rest)->range - (*s_q)->range) > thresh
    //-- 同群的條件 -- 鄰近點的距離 < thresh
    //-- 其化條件點濾掉
    void ScanProcessor::splitConnected(float thresh)
    {
        std::list<SampleSet*> tmp_clusters;

        std::list<SampleSet*>::iterator c_iter = clusters_.begin();

        // For each cluster
        while (c_iter != clusters_.end())
        {
            // Go through the entire list
            while ((*c_iter)->size() > 0)
            {
                // Take the first element
                SampleSet::iterator s_first = (*c_iter)->begin();

                // Start a new queue
                std::list<Sample*> sample_queue;
                sample_queue.push_back(*s_first);

                (*c_iter)->erase(s_first);

                // Grow until we get to the end of the queue
                std::list<Sample*>::iterator s_q = sample_queue.begin();
                while (s_q != sample_queue.end())
                {
                    int expand = static_cast<int>(asin(thresh / (*s_q)->range) / scan_.angle_increment) ;

                    SampleSet::iterator s_rest = (*c_iter)->begin();

                    while ((s_rest != (*c_iter)->end() &&
                            (*s_rest)->index < (*s_q)->index + expand))
                    {
                        if ((*s_rest)->range - (*s_q)->range > thresh)
                        {
                            break;
                        }
                        else if (sqrt(pow((*s_q)->x - (*s_rest)->x, 2.0f) + pow((*s_q)->y - (*s_rest)->y, 2.0f)) < thresh)
                        {
                            sample_queue.push_back(*s_rest);
                            (*c_iter)->erase(s_rest++);
                            break;
                        }
                        else
                        {
                            ++s_rest;
                        }
                    }
                    s_q++;
                }

                // Move all the samples into the new cluster
                SampleSet* c = new SampleSet;
                c->header = (*c_iter)->header;
                for (s_q = sample_queue.begin(); s_q != sample_queue.end(); s_q++)
                    c->insert(*s_q);

                // Store the temporary clusters
                tmp_clusters.push_back(c);
              }

              // Now that c_iter is empty, we can delete
              delete(*c_iter);

              // And remove from the map
              clusters_.erase(c_iter++);
          }

          clusters_.insert(clusters_.begin(), tmp_clusters.begin(), tmp_clusters.end());
          //-- 2019.02.20 新增 ----
          /*
          if (clusters_.size() < 0){
            size_t before = clusters_.size();
            //Combinetempcloud();
            size_t after = clusters_.size();
            ROS_INFO("Combinetempcloud [%u->%u]",before,after);
          }*/
    }

    //-- 2019.02.20 新增 ----
    /*
    void ScanProcessor::Combinetempcloud()
    {
        //-- 建立一組新的 set 容器 ---
        SampleSet* c = new SampleSet;
        //-- 取第一筆資料 並將資料存入 c ------
        std::list<SampleSet*>::iterator c_iter = clusters_.end() ;
        c->header = (*c_iter)->header;
        SampleSet::iterator s_q ;
        for (s_q = (*c_iter)->begin(); s_q != (*c_iter)->end(); s_q++)
            c->insert(*s_q);
        //-- 取第二筆資料 並將資料存入 c ------
        c_iter = clusters_.begin() ;
        for (s_q = (*c_iter)->begin(); s_q != (*c_iter)->end(); s_q++)
            c->insert(*s_q);

        clusters_.push_back(c);
    }*/
    //-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------

};  // namespace laser_processor
