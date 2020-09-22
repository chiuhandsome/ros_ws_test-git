#ifndef ROS_TOOLS_H
#define ROS_TOOLS_H
#include <ros/ros.h>
#include <boost/lexical_cast.hpp>
#include <boost/date_time/posix_time/posix_time.hpp>
//#include <boost/algorithm/string/split.hpp>
//#include <boost/algorithm/string/classification.hpp>
//#include <sstream>
//--------------------------------------------------------------------------
//double calculatePID(double diff_time, double actualValue, double lastValue,
//				    double reference, double kP, double kD, double kI, double &sum);
//--- template function - any type --> std::string -------------------------
template <typename T> std::string convert_str(const T& t)
{
   /*std::ostringstream os;
   os<<t;
   return os.str();*/
   return std::to_string(t);
}
//--- template function - any type --> std::string -------------------------
template <typename T> std::string double_str_prec(const T& t,int ptre_bits)
{
    
   std::string str ;
   std::stringstream ss;
   ss<<std::setprecision(ptre_bits)<< boost::lexical_cast<double>(t);
   str = ss.str();
   return str;
}
//--- template function - any type --> integer -----------------------------
template <typename T> int strtoint(const T& t,int def)
{
    int iRet ;
    try{
        iRet = boost::lexical_cast<int>(t);
    }
    catch (boost::bad_lexical_cast) {
        iRet = def;
    }
    return iRet ;
}

//--- template function - any type --> double -----------------------------
template <typename T> double strtodouble(const T& t,double def)
{
    double dRet ;
    try{
        dRet = boost::lexical_cast<double>(t);
    }
    catch (boost::bad_lexical_cast) {
        dRet = def;
    }
    return dRet ;
}
//--- template function - any type --> double -----------------------------
template <typename T> float strtofloat(const T& t,float def)
{
    float fRet ;
    try{
        fRet = boost::lexical_cast<float>(t);
    }
    catch (boost::bad_lexical_cast) {
        fRet = def;
    }
    return fRet ;
}

//-----------------------------------------------------------------------------
static std::string get_Now_LocalTime()
{
	std::string strLocalTime = boost::posix_time::to_iso_extended_string(boost::posix_time::second_clock::local_time());
	
	return strLocalTime ;
}
//-----------------------------------------------------------------------------
static std::string get_UniqueKey()
{
	std::string updatetime_data = boost::posix_time::to_iso_extended_string(boost::posix_time::microsec_clock::local_time());
	// get_Now_LocalTime():2020-07-17T10:15:49.905444
	std::string rst_key = updatetime_data.substr(0,4)+updatetime_data.substr(5,2)+updatetime_data.substr(8,2)+
                              updatetime_data.substr(11,2)+updatetime_data.substr(14,2)+updatetime_data.substr(17,2)+
			      updatetime_data.substr(20,3);		   
	return rst_key ;
}
//-----------------------------------------------------------------------------
static std::string get_Now_UTCTime()
{
	boost::posix_time::ptime my_posix_time = ros::Time::now().toBoost();
	std::string iso_time_str = boost::posix_time::to_iso_extended_string(my_posix_time);
	return iso_time_str ;
}
//-----------------------------------------------------------------------------
static boost::posix_time::ptime strtodatetime(std::string sTime)
{
	// "2017-12-25 09:48:57" to "2017-12-25 09:48:57"
	int itme = sTime.find("T");
	if(itme >=0){
		sTime = sTime.substr(0,itme-1)+" "+sTime.substr(itme+1,sTime.length()-itme);
	}
	boost::posix_time::ptime _time = boost::posix_time::time_from_string(sTime);

	return _time ;
}
//-----------------------------------------------------------------------------
static std::string get_updatetime_data(std::string  updatetime_data,bool bupper)
{
	std::string sRet=""; 
    //ROS_INFO("get_updatetime_data");
    std::string sYear,sMonth,sDate,sHour,sMinute,sSecond;
    int length = updatetime_data.length() ;
    sYear = (length >=4) ? updatetime_data.substr(0,4) : "" ;
    sMonth = (length >=7) ? updatetime_data.substr(5,2) : "" ;
    sDate = (length >=10) ? updatetime_data.substr(8,2): "" ;
    sHour = (length >=13) ? updatetime_data.substr(11,2): "" ;
    sMinute = (length >=16) ? updatetime_data.substr(14,2): "" ;
    sSecond = (length >=19) ? updatetime_data.substr(17,2): "" ;
    //ROS_INFO(sYear.c_str());
    //ROS_INFO(sMonth.c_str());
    //ROS_INFO(sDate.c_str());
    //ROS_INFO(sHour.c_str());
    //ROS_INFO(sMinute.c_str());
    //ROS_INFO(sSecond.c_str());
    if(sMonth.empty())
        sMonth = bupper ? "99" : "00" ;   
    if(sDate.empty())
        sDate = bupper ? "99" : "00" ;   
    if(sHour.empty())
        sHour = bupper ? "99" : "00" ;   
    if(sMinute.empty())
        sMinute = bupper ? "99" : "00" ;   
    if(sSecond.empty())
        sSecond = bupper ? "99" : "00" ; 
    //ROS_INFO("== data transfer ==");
    //ROS_INFO(sYear.c_str());
    //ROS_INFO(sMonth.c_str());
    //ROS_INFO(sDate.c_str());
    //ROS_INFO(sHour.c_str());
    //ROS_INFO(sMinute.c_str());
    //ROS_INFO(sSecond.c_str());      

    sRet = sYear+"-"+sMonth+"-"+sDate+"T"+sHour+":"+sMinute+":"+sSecond ;  
    return sRet ;
}
//-----------------------------------------------------------------------------
/*static std::vector<std::string> split_condition(std::string cond,std::set<std::string> delims)
{
	vector<std::string> splitted_condition;
  	boost::split(splitted_condition, cond, boost::is_any_of(delims));
  	return splitted_condition;
}*/
//-----------------------------------------------------------------------------
struct timeout_cntdata{
	bool bTimeBaseSet ;
	double fTime_period ;
	double fFirst_period;
	ros::Time begin_Time ;
	//bool bStatus ;
	bool bFirstStatus ;
	bool bTimeoutFlag ;
	//-----------------
	bool TimeroutChk()
	{
        if(bTimeBaseSet){
            if(!bFirstStatus){
                bFirstStatus = true ;
                begin_Time = ros::Time::now() ;
            }
            else{
                bTimeoutFlag = ((ros::Time::now() - begin_Time).toSec() > fTime_period) ;
            }
        }
		return bTimeoutFlag ;
	}
	//--------------
	void setbTimeoutDisable()
	{
		bTimeoutFlag = false ;
		bTimeBaseSet = false ;
		bFirstStatus = false ;
	}
    //--------------
	void setbTimeoutEnable()
	{
		bTimeoutFlag = false ;
		bTimeBaseSet = true ;
		bFirstStatus = false ;
	}
	//--------------
};
//-----------------------------------------------------------------------------
#endif
