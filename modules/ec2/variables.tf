variable "ec2_name" {
    description = "Name to be used on EC2 instance created"
    type        = string
}

variable "ec2_ami" {
    description = "ID of AMI to use for the instance"
    type        = string
    default     = "ami-09d56f8956ab235b3"
}

variable "ec2_instance_type" {
    description = "The type of instance to start"
    type        = string
    default     = "t2.micro"
}

variable "ec2_key_name" {
    description = "Key name of the Key Pair to use for the instance"
    type        = string
    default     = "borodynKey"
}

variable "ec2_vpc_security_group_ids" {
    description = "A list of security group IDs to associate with"
    type        = list(string)
}

variable "ec2_subnet_id" {
    description = "The VPC Subnet ID to launch in"
    type        = string
}

