module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.14.0"

  name = var.vpc_name
  cidr = var.vpc_cidr

  azs             = var.vpc_azs
  private_subnets = var.vpc_private_subnets
  public_subnets  = var.vpc_public_subnets
  database_subnets = var.vpc_database_subnets

  enable_dns_hostnames = var.vpc_enable_dns_hostnames
  enable_nat_gateway = var.vpc_enable_nat_gateway
  /*create_database_internet_gateway_route = var.vpc_create_database_internet_gateway_route
  create_database_subnet_group = var.vpc_create_database_subnet_group
  create_database_subnet_route_table = var.vpc_create_database_subnet_route_table*/
}