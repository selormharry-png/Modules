output "vpc_id" {
  description = "ID of the created VPC"
  value       = module.web_cluster.vpc_id
}

output "public_subnet_id" {
  description = "ID of the public subnet"
  value       = module.web_cluster.public_subnet_id
}

output "security_group_id" {
  description = "ID of the web security group"
  value       = module.web_cluster.security_group_id
}

output "load_balancer_dns" {
  description = "The DNS name of the Application Load Balancer"
  value       = module.web_cluster.load_balancer_dns_name
}

output "autoscaling_group_name" {
  description = "Name of the autoscaling group created by the module"
  value       = module.web_cluster.autoscaling_group_name
}
