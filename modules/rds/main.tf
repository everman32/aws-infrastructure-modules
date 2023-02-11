module "rds" {
  source  = "terraform-aws-modules/rds/aws"
  version = "5.1.1"

  identifier                     = var.rds_identifier
  
  engine               = var.rds_engine
  engine_version       = var.rds_engine_version
  family               = var.rds_family
  major_engine_version = var.rds_major_engine_version
  instance_class       = var.rds_instance_class

  allocated_storage = var.rds_allocated_storage

  create_random_password = var.rds_create_random_password

  db_name  = var.rds_db_name
  username = var.rds_username
  password = var.rds_password
  port     = var.rds_port


  publicly_accessible = true

  create_db_subnet_group = true
  vpc_security_group_ids = var.rds_vpc_security_group_ids
  subnet_ids             = var.rds_subnet_ids


  maintenance_window      = var.rds_maintenance_window
  backup_window           = var.rds_backup_window
  backup_retention_period = var.rds_backup_retention_period
}

