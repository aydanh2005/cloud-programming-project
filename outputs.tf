output "cloudfront_url" {
  description = "Primary globally distributed website URL."
  value       = "https://${aws_cloudfront_distribution.web.domain_name}"
}

output "load_balancer_url" {
  description = "Application Load Balancer test URL."
  value       = "http://${aws_lb.web.dns_name}"
}

output "autoscaling_group_name" {
  description = "Auto Scaling Group used by the website backend."
  value       = aws_autoscaling_group.web.name
}
