variable "aws_region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "us-east-1"
}

variable "name_prefix" {
  description = "Prefix used for resource names"
  type        = string
  default     = "module-2-webserver"
}

variable "key_name" {
  description = "Optional EC2 key pair name for SSH access"
  type        = string
  default     = null
}

variable "instance_type" {
  description = "EC2 instance type for the autoscaling instances"
  type        = string
  default     = "t3.micro"
}

variable "body_note" {
  description = "Note written into the Apache index.html body"
  type        = string
  default     = "Welcome to Harry's Apache web server."
}

variable "asg_min_size" {
  description = "Minimum ASG capacity"
  type        = number
  default     = 2
}

variable "asg_max_size" {
  description = "Maximum ASG capacity"
  type        = number
  default     = 5
}

variable "asg_desired_capacity" {
  description = "Desired ASG capacity"
  type        = number
  default     = 2
}
