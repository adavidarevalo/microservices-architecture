terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.8.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source = "./modules/vpc"

  name_prefix = var.name_prefix
  vpc_cidr    = var.vpc_cidr

  common_tags = {
    Name        = var.name_prefix
    Environment = var.environment
    Owner       = var.owner
    CostCenter  = var.cost_center
  }
}

module "rds" {
  source = "./modules/rds"

  name_prefix         = var.name_prefix
  vpc_id              = module.vpc.vpc_id
  vpc_cidr            = var.vpc_cidr
  database_subnet_ids = module.vpc.database_subnet_ids
  master_password     = var.db_password

  common_tags = {
    Name        = var.name_prefix
    Environment = var.environment
    Owner       = var.owner
    CostCenter  = var.cost_center
  }
}

module "ses_email" {
  source = "./modules/ses-email"

  email_address = "davidarevaloc20@gmail.com"

  common_tags = {
    Name        = var.name_prefix
    Environment = var.environment
    Owner       = var.owner
    CostCenter  = var.cost_center
  }
}