# 🛒 Scalable 3-Tier E-Commerce Infrastructure 

This repository contains the Terraform configuration for a high-availability, three-tier web application architecture deployed on AWS. The project demonstrates automated infrastructure provisioning, secure networking, and real-time performance monitoring.

## 🏗️ Architecture Overview
The infrastructure is divided into three distinct layers to ensure security and scalability:

1. **Tier 1: Presentation Layer (Public)**
   - **Application Load Balancer (ALB):** Acts as the single entry point for user traffic, distributing requests across the application fleet.
   - **Public Subnets:** Spread across multiple Availability Zones (AZs) for high availability.

2. **Tier 2: Application Layer (Private)**
   - **EC2 Fleet:** 4 Ubuntu instances running Nginx, serving the application logic.
   - **Availability:** Distributed across `us-east-1a` and `us-east-1b` to survive a data center failure.
   - **Health Checks:** Custom `/health` endpoint ensuring the ALB only routes traffic to "Ready" instances.

3. **Tier 3: Data Layer (Isolated)**
   - **Database Instance:** Located in a private subnet with no direct internet access.
   - **Connectivity:** Securely communicating with the App Tier via internal AWS networking.



## 📊 Monitoring & Detailed Statistics
A key feature of this deployment is the **Real-Time Insights Dashboard** created in CloudWatch:
- **1-Minute Granularity:** Enabled `detailed monitoring` for all EC2 instances.
- **Custom Dashboard:** A codified JSON dashboard tracking:
    - **CPU Utilization:** Monitoring the "heartbeat" of the server fleet.
    - **Request Count:** Real-time tracking of "shoppers" hitting the ALB.

## 🚀 Key "Extra Mile" Accomplishments
- **Infrastructure as Code (IaC):** Fully modularized Terraform structure for reusability.
- **Automated Bootstrapping:** Used `user_data` scripts to automate the entire software stack installation on boot.
- **Security-First Design:** Implemented "Referenced Security Groups," allowing the App Tier to accept traffic *only* from the ALB.

## 🛠️ Deployment Instructions
1. Initialize the project: `terraform init`
2. Review the execution plan: `terraform plan`
3. Deploy the infrastructure: `terraform apply -auto-approve`
4. Access the site via the `alb_dns_name` output.

---
**Author:** Ahmet Erdogan  
**Date:** April 2026
