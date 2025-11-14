## High Availability Web Application Architecture on AWS

Overview

This project demonstrates a highly available, scalable, and secure web application architecture deployed on Amazon Web Services (AWS).
The infrastructure is designed to ensure fault tolerance, load balancing, and automatic scaling across multiple Availability Zones (AZs) within a single AWS region.

![image alt](https://github.com/hashim1sharif/DevOps_Journey/blob/1d2f053bc1538d53ae947e1dd1f4ac47560ac063/AWS/Challenge/Images/vpc-example-private-subnets.png)


## Architecture Components

1. Region

All AWS resources are deployed within a single region for geographical consistency and cost management.

2. VPC (Virtual Private Cloud)

A dedicated, isolated virtual network for secure communication between resources.

3. Availability Zones

Two AZs are used to provide high availability and fault tolerance.
If one zone fails, the other continues to serve requests seamlessly.

4. Public Subnets

Contain:

NAT Gateways for outbound internet access from private instances.

Application Load Balancer (ALB) to distribute incoming traffic evenly across instances in multiple AZs.

5. Private Subnets

Contain:

EC2 instances (Servers) running the web application.

Instances grouped in an Auto Scaling Group to dynamically adjust capacity based on load.

6. Security Groups

Act as virtual firewalls to control inbound and outbound traffic for each component.

7. S3 Gateway

Used for connecting to Amazon S3, which stores static content (images, backups, etc.) or supports data exchange.


## How It Works

Users send requests through the Application Load Balancer (ALB).

The ALB routes requests to healthy instances in the Auto Scaling Group located in private subnets.

If traffic increases, Auto Scaling launches additional EC2 instances automatically.

Instances access the internet securely through the NAT Gateway.

Data and static files can be stored or retrieved from Amazon S3.

If one Availability Zone becomes unavailable, the second AZ continues to handle requests — ensuring high availability.


## Security Considerations

Security Groups restrict access to only necessary ports (e.g., HTTP/HTTPS).

Private subnets prevent direct public internet access to backend servers.

IAM Roles & Policies control permissions for services and users.

## Features

Multi-AZ High Availability
Auto Scaling for Dynamic Load Management
Centralized Load Balancing (ALB)
Secure Networking with VPC and Subnets
Integration with S3 for Storage


## Technologies Used

AWS EC2

AWS VPC

AWS Application Load Balancer

AWS Auto Scaling Group

AWS NAT Gateway

AWS IAM

AWS CloudWatch (for monitoring)


Next Improvements
- Automate deployment using **Terraform** or **AWS CDK**  
- Add **RDS** (Relational Database Service) for persistent data storage  
- Implement **CloudWatch alarms** and **Auto Scaling policies**  
- Integrate **CI/CD pipeline** for automated deployment  