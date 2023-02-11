output "db_instance_id" {
  description = "The RDS instance ID"
  value       = module.rds.db_instance_id
}

output "vpc_id" {
  description = "Id of VPC"
  value       = module.vpc.vpc_id
}