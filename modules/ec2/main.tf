module "ec2-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "4.2.1"

  name                   = var.ec2_name
  
  ami                    = var.ec2_ami
  instance_type          = var.ec2_instance_type
  key_name               = var.ec2_key_name
 
  vpc_security_group_ids = var.ec2_vpc_security_group_ids
  subnet_id              = var.ec2_subnet_id
}