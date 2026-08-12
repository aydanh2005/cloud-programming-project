# IU Cloud Programming Resubmission

This project deploys a simple webpage to AWS using a fully automated and reproducible Terraform configuration.

## Architecture

Global visitor -> CloudFront -> Application Load Balancer -> Auto Scaling Group -> EC2 instances in two Availability Zones

The design directly addresses the assignment requirements:

- **High availability:** two EC2 instances are distributed across two Availability Zones and monitored by an Application Load Balancer.
- **Low latency for global visitors:** CloudFront caches and delivers the webpage through AWS edge locations.
- **Backend autoscaling:** the Auto Scaling Group maintains 2 instances and can scale to 4 using a CPU target-tracking policy.
- **Reproducibility:** Terraform creates the network, security groups, ALB, launch template, Auto Scaling Group, scaling policy, CloudFront distribution, and webpage.

Route 53 is intentionally omitted because the project does not require a custom domain. The CloudFront domain is the primary public URL.

## Prerequisites

- Terraform 1.5 or newer
- AWS CLI with the `aydan-cloud` profile configured
- AWS permissions to create VPC, EC2, ELB, Auto Scaling, CloudWatch scaling alarms, and CloudFront resources

## Deploy

```bash
aws sts get-caller-identity --profile aydan-cloud
terraform init
terraform fmt -check
terraform validate
terraform plan -out=tfplan
terraform apply tfplan
```

CloudFront may need several minutes after `terraform apply` finishes before the website is available. Use the `cloudfront_url` output as the final website address.

## Verify

```bash
terraform output
curl "$(terraform output -raw load_balancer_url)"
curl -L "$(terraform output -raw cloudfront_url)"
aws autoscaling describe-auto-scaling-groups --auto-scaling-group-names "$(terraform output -raw autoscaling_group_name)" --profile aydan-cloud
```

Capture evidence of `terraform validate`, the successful apply summary, Terraform outputs, two healthy target-group instances, Auto Scaling capacity, CloudFront enabled status, and the final webpage in a browser.

## Clean up after assessment

To prevent ongoing AWS charges after evidence has been collected and the assessor no longer needs a live deployment:

```bash
terraform destroy
```
