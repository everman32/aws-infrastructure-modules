variable "vpc_id" {
  description = "Id of VPC"
  type        = string
}

variable "sg_name" {
  description = "Name of security group"
  type        = string
  default     = "borodynSG"
}

variable "sg_description" {
  description = "Description of security group"
  type        = string
  default     = "Allows HTTP, HTTPS, SSH"
}

variable "sg_ingress_cidr_blocks" {
  description = "List of IPv4 CIDR ranges to use on all ingress rules"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "sg_egress_cidr_blocks" {
  description = "List of IPv4 CIDR ranges to use on all egress rules"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "sg_egress_ipv6_cidr_blocks" {
  description = "List of IPv6 CIDR ranges to use on all egress rules"
  type        = list(string)
  default     = []
}

variable "sg_ingress_rules" {
  description = "List of ingress rules to create by name"
  type        = list(string)
  default     = ["http-80-tcp", "https-443-tcp", "ssh-tcp", "postgresql-tcp"]
}

variable "sg_egress_rules" {
  description = "List of egress rules to create by name"
  type        = list(string)
  default     = ["all-all"]
}