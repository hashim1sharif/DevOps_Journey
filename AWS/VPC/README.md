                VPC Virtual Private Cloud

A Virtual Private Cloud (VPC) is a logically isolated section of the AWS cloud where you can launch and manage your AWS resources like EC2 instances, databases, and load balancers inside your own private network.
It’s like having your own custom data center inside AWS, but fully virtual and configurable.

The IP address range in AWS — often called a CIDR block (Classless Inter Domain Routing) defines which private IP
 addresses your resources (like EC2 instances) can use inside your VPC.

An IP address range is a block of IP addresses that you assign to your VPC when you create it.

    ## VPC and Subnets

1.  Inside a VPC, you can create multiple subnets.
    Each subnet represents a smaller segment of the overall IP address range (CIDR block) of the VPC.
    This concept of dividing a large IP range into smaller parts is called subnetting.

    ## Internet Gateway (IGW)

2.  After creating a VPC and subnets, you attach an Internet Gateway to the VPC.

    ## Why is an Internet Gateway required?

An Internet Gateway allows your VPC resources to connect to the Internet and lets external users access public resources (like a web server ).
Without an Internet Gateway, your VPC is completely isolated.

    For Example: Think of the Internet Gateway as the main door or pass that allows traffic to enter or leave your private AWS network.


    ## Public Subnet Access

3.  You can connect a public subnet to the Internet Gateway through the route table.
    This allows instances in that subnet (like a web server) to access or be accessed from the Internet.

    ## Load Balancer and Subnets

4.  A Load Balancer (for example, an Application Load Balancer) is usually placed in the public subnet.
    It receives incoming requests from users over the Internet and then forwards them to instances located in private subnets.

The Load Balancer knows where to send traffic because of target groups and route tables, not by itself.

    ## Route Tables

5.  Each subnet is associated with a route table.
    Route tables define how network traffic should flow — for example:

    ## For Example:

Send Internet traffic (0.0.0.0/0) → Internet Gateway

Send internal traffic → Private subnet

    ## Security Groups (SG)

6.  A Security Group acts as a virtual firewall for your EC2 instances.
    It controls inbound (incoming) and outbound (outgoing) traffic based on rules you define — such as ports and IP addresses.

    ## For Example:

Allow inbound HTTP traffic (port 80) from anywhere

Allow SSH access (port 22) only from your IP address

    ## Summary:

VPC = your private network in AWS

Subnets = divide your VPC’s IP range

Internet Gateway = gives internet access to public subnets

Route Table = defines how traffic flows

Load Balancer = distributes traffic to backend instances

Security Group = controls access at the instance level
