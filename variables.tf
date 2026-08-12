variable "aws_region" {
  description = "AWS region used for the origin infrastructure."
  type        = string
  default     = "eu-north-1"
}

variable "aws_profile" {
  description = "Local AWS CLI profile used by Terraform."
  type        = string
  default     = "aydan-cloud"
}

variable "project_name" {
  description = "Short name used to identify AWS resources."
  type        = string
  default     = "aydan-cloud-web"
}
