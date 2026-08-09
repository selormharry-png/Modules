output "vpc_id" {
  value       = aws_vpc.this.id
  description = "ID of the created VPC"
}

output "public_subnet_id" {
  value       = aws_subnet.public.id
  description = "ID of the public subnet"
}

output "security_group_id" {
  value       = aws_security_group.web.id
  description = "ID of the web security group"
}

output "load_balancer_dns_name" {
  value       = aws_lb.web.dns_name
  description = "DNS name of the application load balancer"
}

output "autoscaling_group_name" {
  value       = aws_autoscaling_group.web.name
  description = "Name of the autoscaling group"
}
