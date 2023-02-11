variable "rds_identifier" {
    description = "The name of the RDS instance"
    type        = string
}

variable "rds_engine" {
    description = "The database engine to use"
    type        = string
    default     = "postgres"
}

variable "rds_engine_version" {
    description = "The engine version to use"
    type        = string
    default     = "14.1"
}

variable "rds_family" {
    description = "The family of the DB parameter group"
    type        = string
    default     = "postgres14"
}

variable "rds_major_engine_version" {
    description = "Specifies the major version of the engine that this option group should be associated with"
    type        = string
    default     = "14"
}

variable "rds_instance_class" {
    description = "The instance type of the RDS instance"
    type        = string
    default     = "db.t3.micro"
}

variable "rds_allocated_storage" {
    description = "The allocated storage in gigabytes"
    type        = string
    default     = "20"
}

variable "rds_db_name" {
    description = "The DB name to create. If omitted, no database is created initially"
    type        = string
    default     = "postgres"
}

variable "rds_create_random_password" {
    description = "Whether to create random password for RDS primary cluster"
    type        = bool
    default     = false
}

variable "rds_username" {
    description = "Username for the master DB user"
    type        = string
    default     = "postgres"
}

variable "rds_password" {
    description = "Username for the master DB user"
    type        = string
    default     = "postgres"
}

variable "rds_port" {
    description = "The port on which the DB accepts connections"
    type        = string
    default     = "5432"
}

variable "rds_vpc_security_group_ids" {
  description = "List of VPC security groups to associate"
  type        = list(string)
}

variable "rds_maintenance_window" {
  description = "The window to perform maintenance in"
  type        = string
  default     = "Mon:00:00-Mon:03:00"
}

variable "rds_backup_window" {
  description = "The daily time range (in UTC) during which automated backups are created if they are enabled"
  type        = string
  default     = "03:00-06:00"
}

variable "rds_backup_retention_period" {
  description = "The days to retain backups for"
  type        = string
  default     = "0"
}

variable "rds_subnet_ids" {
    description = "A list of VPC subnet IDs"
    type        = list(string)
}