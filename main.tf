terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = var.region
  profile = var.profile
}

module "vpc" {
  source = "./modules/vpc"
}

module "security_group" {
  source = "./modules/security_group"

  vpc_id = module.vpc.vpc_id
}

module "public_instance" {
  source = "./modules/ec2"

  ec2_name = "public_instance"

  ec2_vpc_security_group_ids = [module.security_group.security_group_id]
  ec2_subnet_id              = module.vpc.public_subnets[0]
}

module "private_instance" {
  source = "./modules/ec2"

  ec2_name = "private_instance"

  ec2_vpc_security_group_ids = [module.security_group.security_group_id]
  ec2_subnet_id              = module.vpc.private_subnets[1]
}

module "rds" {
  source = "./modules/rds"

  rds_identifier = "borodynrds"

  //rds_db_subnet_group_name = module.vpc.database_subnet_group_name
  rds_vpc_security_group_ids = [module.security_group.security_group_id]
  rds_subnet_ids = module.vpc.public_subnets
}
