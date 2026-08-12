# Deployment Evidence Checklist

Do not place access keys, secret keys, account IDs, or other credentials in screenshots.

1. `terraform validate` shows `Success! The configuration is valid.`
2. `terraform plan` shows the planned infrastructure without errors.
3. `terraform apply` shows `Apply complete!`.
4. `terraform output` shows the ALB URL, CloudFront HTTPS URL, and Auto Scaling Group name.
5. AWS VPC console shows two public subnets in different Availability Zones.
6. EC2 console shows two running instances created by the Auto Scaling Group.
7. Target group console shows two healthy registered targets.
8. Auto Scaling console shows minimum 2, desired 2, maximum 4 and the CPU target-tracking policy.
9. CloudFront console shows the distribution enabled.
10. Browser shows the final webpage through the CloudFront HTTPS URL.

Also test the ALB and CloudFront outputs with `curl`. Record the date of the deployment and use the evidence consistently in the Phase 2 presentation and final report.
