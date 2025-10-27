                AWS High Availability Architecture

This architecture demonstrates a highly available, scalable, and secure infrastructure setup across multiple Availability Zones (AZs) using core AWS services.

![image alt](https://github.com/hashim1sharif/DevOps_Journey/blob/2615984baada0d3715b84db33b02e1725fed663d/AWS/VPC/AWS-VPC-Project/Images/vpc-example-private-subnets.png)


Architecture Overview

Key Components 

Region
Represents a geographical area that contains multiple Availability Zones (AZs) for redundancy.

VPC (Virtual Private Cloud)
Provides an isolated network environment for deploying resources securely.


vailability Zones

Each Availability Zone contains:

Public Subnet — for internet-facing resources such as the NAT Gateway and Load Balancer.

Private Subnet — for backend instances that are not directly accessible from the internet.

                Components Breakdown

1. Application Load Balancer (ALB)

Distributes incoming traffic evenly across multiple servers in different Availability Zones.

Increases fault tolerance and scalability.

2. Auto Scaling Group

Automatically adjusts the number of EC2 instances based on demand.

Ensures optimal performance and cost efficiency.

3. NAT Gateway

Allows instances in private subnets to access the internet securely (e.g., for updates or external APIs).

Prevents external sources from initiating connections to the private subnet.

4. Security Groups

Act as virtual firewalls controlling inbound and outbound traffic to instances.

5. S3 Gateway

Provides secure access to Amazon S3 storage buckets from within the VPC.

6. Servers (EC2 Instances)

Deployed in private subnets to handle application logic, processing, and database operations.


                Benefits

High Availability: Redundant infrastructure across multiple AZs

Scalability: Auto Scaling for dynamic workloads

Security: Segregated subnets and controlled access

Performance: Load balancing and network isolation

Reliability: Integration with managed AWS services