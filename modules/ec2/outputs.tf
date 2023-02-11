output "arn" {
  description = "The ARN of the instance"
  value       = module.ec2-instance.arn
}

output "id" {
  description = "The ID of the instance"
  value       = module.ec2-instance.id
}

output "public_ip" {
  description = "The public IP address assigned to the instance, if applicable"
  value       = module.ec2-instance.public_ip
}

output "private_ip" {
  description = "The private IP address assigned to the instance"
  value       = module.ec2-instance.private_ip
}

output "public_dns" {
  description = "The public DNS name assigned to the instance"
  value       = module.ec2-instance.public_dns
}

output "private_dns" {
  description = "The private DNS name assigned to the instance"
  value       = module.ec2-instance.private_dns
}
