provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile

  default_tags {
    tags = {
      Project   = "IU-Cloud-Programming-Resubmission"
      ManagedBy = "Terraform"
      Student   = "Aydan-Huseynli"
    }
  }
}
