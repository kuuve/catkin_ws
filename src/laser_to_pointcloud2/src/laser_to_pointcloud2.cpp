#include <ros/ros.h>
#include <tf/transform_listener.h>
#include <laser_geometry/laser_geometry.h>

class Node 
{
private:
	ros::NodeHandle n;
    laser_geometry::LaserProjection projector;
    tf::TransformListener tfListener;

    ros::Publisher pub;
    ros::Subscriber scan_sub;
public:
    Node();
    void scanCallback(const sensor_msgs::LaserScan::ConstPtr& scan);
};

Node::Node()
{
    scan_sub = n.subscribe<sensor_msgs::LaserScan> ("scan_breakpoint", 100, &Node::scanCallback, this);
    pub = n.advertise<sensor_msgs::PointCloud2> ("/pointcloud2", 100, false);
    tfListener.setExtrapolationLimit(ros::Duration(0.1));
}

void Node::scanCallback(const sensor_msgs::LaserScan::ConstPtr& scan)
{
    sensor_msgs::PointCloud2 cloud;
    projector.transformLaserScanToPointCloud("laser", *scan, cloud, tfListener);
    pub.publish(cloud);
}

int main(int argc, char** argv)
{
    ros::init(argc, argv, "laser_to_pointcloud2_node");
    Node node;

    ros::spin();

    return 0;
}
