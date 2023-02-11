module "security-group" {
  source = "terraform-aws-modules/security-group/aws"

  name        = var.sg_name
  description = var.sg_description
  vpc_id      = var.vpc_id

  ingress_cidr_blocks = var.sg_ingress_cidr_blocks
  ingress_rules       = var.sg_ingress_rules

  egress_cidr_blocks = var.sg_egress_cidr_blocks
  egress_ipv6_cidr_blocks = var.sg_egress_ipv6_cidr_blocks
  egress_rules = var.sg_egress_rules
}