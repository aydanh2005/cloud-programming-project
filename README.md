# Cloud Programming Project – Hosting a Webpage on AWS

This project demonstrates the deployment of a simple webpage on AWS using Terraform as an Infrastructure as Code (IaC) tool.  
It was developed as part of the IU portfolio assignment for the Cloud Programming module.

---

## Project Objective

The goal of this project is to design and implement a cloud-based solution for hosting a webpage while considering the following cloud requirements:

- High availability  
- Low latency for global users  
- Scalable backend infrastructure  

---

## Architecture Overview

The architecture proposed in Phase 1 was:

User → Route 53 → CloudFront → Load Balancer → Auto Scaling Group → EC2 Instances  

In Phase 2, the implementation focused on deploying and validating the core hosting setup using EC2, Apache, HTML, and Terraform.

---

## Features

- Deployment of a simple webpage on AWS  
- EC2 instance used as a virtual server  
- Webpage hosted with Apache  
- Infrastructure defined with Terraform  
- Deployment validated through browser access and Terraform commands  

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

1. Configure the AWS environment  
2. Use Terraform to define the infrastructure  
3. Launch the EC2 instance  
4. Install and start Apache on the server  
5. Deploy the HTML file  
6. Access the webpage using the public IP address  

---

## Validation

The deployment was verified using:

- `terraform init`  
- `terraform validate`  
- `terraform plan`  

The final result was confirmed by accessing the webpage through the EC2 public IP address.

---

## Limitations

The full advanced architecture from Phase 1, including CloudFront, Route 53, Load Balancer, and Auto Scaling, was designed conceptually but only partially implemented in Phase 2.

---

## Author

Aydan Huseynli  

Created for the IU module  
DLBSEPCP01_E – Cloud Programming
