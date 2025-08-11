terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.92.0"
    }
  }
}

module "ses" {
  source = "cloudposse/ses/aws"

  domain        = var.domain
  zone_id       = var.zone_id
  verify_dkim   = var.verify_dkim
  verify_domain = var.verify_domain

  tags = var.common_tags
}