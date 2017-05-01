#include <ros/ros.h>
#include <scan_breakpoint/Data.h>
#include <sensor_msgs/LaserScan.h>

#define LASER_NUMBER 1080

class Node
{
private:
	ros::NodeHandle n;
	ros::Publisher pub;
	ros::Subscriber abd_sub;
	ros::Subscriber scan_sub;
	
	sensor_msgs::LaserScan get_scan;
	scan_breakpoint::Data get_data;

	bool bool_abd;
	bool bool_scan;
public:
	Node();
	void dataCallback(const scan_breakpoint::Data::ConstPtr& msg);
	void scanCallback(const sensor_msgs::LaserScan::ConstPtr& msg);
	void mainCallback();
};

Node::Node()
	: bool_abd(false), bool_scan(false)
{
	pub = n.advertise<sensor_msgs::LaserScan>("scan_breakpoint", 10);
	abd_sub = n.subscribe<scan_breakpoint::Data>("breakpoint_removed", 10, &Node::dataCallback, this);
	scan_sub = n.subscribe<sensor_msgs::LaserScan>("/scan", 10, &Node::scanCallback, this);
}

void Node::dataCallback(const scan_breakpoint::Data::ConstPtr& msg)
{
	get_data = *msg;
	//for(int i=0; i<LASER_NUMBER; i++)
	//	get_data.data[i] = msg->data[i];
	bool_abd = true;

	if(bool_abd && bool_scan)
		mainCallback();
}

void Node::scanCallback(const sensor_msgs::LaserScan::ConstPtr& msg)
{
	get_scan = *msg;
	bool_scan = true;

	if(bool_abd && bool_scan)
		mainCallback();
}

void Node::mainCallback()
{
	for(int j=0; j<LASER_NUMBER; j++)
		get_scan.ranges[j] = get_data.data[j];
	
	pub.publish(get_scan);

	bool_abd = false;
	bool_scan = false;
}

int main(int argc, char** argv)
{
	ros::init(argc, argv, "scan_breakpoint_node");
	Node node;

	ros::spin();

	return 0;
}
