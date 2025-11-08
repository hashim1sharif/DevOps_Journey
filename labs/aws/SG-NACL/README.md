                Architecture Diagram

![Screenshot 2023-06-29 at 12 14 32 AM](https://github.com/iam-veeramalla/aws-devops-zero-to-hero/assets/43399466/30bbc9e8-6502-438b-8adf-ece8b81edce9)

                Components:

Actor: Represents the end user or client accessing the instance from the internet.

Internet Gateway: Provides the EC2 instance access to and from the public internet.

Network ACL (NACL): Controls inbound and outbound traffic at the subnet level.

Route Table: Directs network traffic within the VPC and to the internet gateway.

Security Group: Filters inbound and outbound traffic at the instance level.

EC2 Instance: The deployed compute resource (e.g., Amazon Linux, Ubuntu) running your application or service.

Public Subnet: The subnet configured to allow internet access.


                Deployment Steps

Create a VPC

Define a CIDR block (e.g., 172.16.0.0/16).

Create a Public Subnet

CIDR block: 172.16.1.0/24

Enable Auto-assign Public IP.

Attach an Internet Gateway

Create an Internet Gateway and attach it to the VPC.

Configure Route Table

Add a route to 0.0.0.0/0 pointing to the Internet Gateway.

Associate this route table with the public subnet.

Set Up Network ACLs

Allow inbound and outbound HTTP (80), HTTPS (443), and SSH (22) traffic.

Launch EC2 Instance

Choose instance type (e.g., t2.micro).

Place it in the public subnet.

Assign the correct security group and key pair.

Configure Security Group

Inbound rules:

SSH: Port 22 (Your IP)

HTTP: Port 80 (0.0.0.0/0)

HTTPS: Port 443 (0.0.0.0/0)

Outbound: Allow all.

Access the Instance

SSH into the instance using the public IP.

Deploy your application or test connectivity.


                Tools & Technologies

AWS EC2

VPC

Internet Gateway

Security Group & NACL

Route Table

Ubuntu / Amazon Linux

                