#include <ros/ros.h>
#include <abd/Data.h>
#include <abd/Breakpoint.h> //breakpointpub
#include <sensor_msgs/LaserScan.h>

#define LASER_NUMBER 1080
#define LASER_THETA 0.25

#define LAMBDA 10
//#define LAMBDA 90

#define SIGMA 0.03
//#define SIGMA 0.005 

#include <iostream>
#include <cmath>
using namespace std;

class abd_node
{
private:
	ros::NodeHandle n;
	ros::Publisher abd_pub;
	ros::Publisher abd_pub2;
	ros::Subscriber scan_sub;

	abd::Data msg;
	abd::Breakpoint breakpoint_msg; //breakpointpub
public:
	abd_node();
	double deg_rad(double input);
	void scanCallback (const sensor_msgs::LaserScan::ConstPtr& scan);
};

abd_node::abd_node(void)
{
	abd_pub = n.advertise<abd::Data>("breakpoint_removed", 100);
	abd_pub2 = n.advertise<abd::Breakpoint>("breakpoint", 100); //breakpointpub
	scan_sub = n.subscribe("/scan", 100, &abd_node::scanCallback, this);
}

//각도를 라디안으로 변환
double abd_node::deg_rad(double input)
{
	double result = input * M_PI / 180;
	return result;
}

void abd_node::scanCallback (const sensor_msgs::LaserScan::ConstPtr& scan)
{
	bool breakpoint[LASER_NUMBER]; //브레이크 포인트 위치 저장
	double laser_data[LASER_NUMBER]; //라이다 거리 값 저장
	int laser_intensity[LASER_NUMBER];
	double Dmax = 0.0;
	double distance = 0.0;

    for(int i = 0; i < LASER_NUMBER; i++)
	{
		laser_data[i] = scan->ranges[i];
		laser_intensity[i] = (int)(scan->intensities[i]);
		breakpoint[i] = false;
	}

	for(int n=2; n<LASER_NUMBER; n++)
	{
		Dmax = laser_data[n-1] * (sin(deg_rad(LASER_THETA))/sin(deg_rad(LAMBDA-LASER_THETA))) + 3*SIGMA;
		distance = sqrt(pow(laser_data[n-1], 2) + pow(laser_data[n], 2) - 2*laser_data[n-1]*laser_data[n]*cos(deg_rad(LASER_THETA)));
		if(distance > Dmax)
		{
			breakpoint[n] = true;
			breakpoint[n-1] = true;
		}
	}

	for(int k=0; k<LASER_NUMBER; k++)
	{
		if(breakpoint[k] == true)
		{
			msg.data[k] = 0;
			breakpoint_msg.data[k] = true; //breakpointpub
		}
		else if(laser_intensity[k] < 600.0)
		{
			msg.data[k] = 0;
			breakpoint_msg.data[k] = false; //breakpointpub
		}
		else
		{
			msg.data[k] = laser_data[k];
			breakpoint_msg.data[k] = false;
		}
	}

    abd_pub.publish(msg);
	abd_pub2.publish(breakpoint_msg); //breakpointpub
}

int main(int argc, char** argv)
{
  ros::init(argc, argv, "abd_node");
  abd_node node;

  ros::spin();
}

