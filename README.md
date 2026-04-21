# Cloud Programming Project – Hosting a Webpage on AWS

This project demonstrates the deployment of a simple webpage on AWS using Terraform as an Infrastructure as Code (IaC) tool.  
It was developed as part of the IU portfolio assignment for the Cloud Programming module.

---

## Project Objective

The goal of this project was to design and implement a cloud-based solution for hosting a simple webpage while considering key cloud computing principles such as reliability, scalability, and reproducibility.

---

## Architecture Overview

In the conception phase, a broader AWS architecture was planned:

User → Route 53 → CloudFront → Load Balancer → Auto Scaling Group → EC2 Instances

This initial design reflected ideas such as global accessibility, scalability, and improved traffic handling.

In the development phase, the final prototype focused on a practical and cost-efficient implementation using:
- a single AWS EC2 instance
- Apache Web Server
- Terraform
- a static HTML webpage

---

## Features

- Deployment of a simple webpage on AWS
- EC2 instance used as a virtual server
- Webpage hosted with Apache Web Server
- Infrastructure defined with Terraform
- Deployment verified through Terraform commands and browser access

---

## Technologies Used

- AWS EC2
- Terraform
- Apache Web Server
- HTML

---

## Project Structure

- `main.tf` — Terraform configuration (Infrastructure as Code)  
- `mywebsite.html` — Simple HTML webpage  
- `README.md` — Project documentation  

---

## How to Use

1. Define infrastructure using Terraform
2. Initialize Terraform environment
3. Validate configuration
4. Preview infrastructure changes
5. Apply infrastructure changes
6. Launch the EC2 instance
7. Install and start Apache Web Server
8. Upload the HTML webpage
9. Access the webpage through the EC2 public IP
   
---

## Validation

The deployment was verified using:

- `terraform init`  
- `terraform validate`  
- `terraform plan`  

The final result was confirmed by:
- checking that the EC2 instance reached the running state
- verifying that the webpage loaded successfully in a browser through the public IP address


---

## Limitations

The full advanced architecture from Phase 1, including CloudFront, Route 53, Load Balancer, and Auto Scaling, was designed conceptually but only partially implemented in Phase 2.

---

## Author

Aydan Huseynli  

Created for the IU module  
DLBSEPCP01_E – Cloud Programming
