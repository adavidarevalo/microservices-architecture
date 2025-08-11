terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.92.0"
    }
  }
}

resource "aws_ses_email_identity" "email" {
  email = var.email_address

  tags = var.common_tags
}