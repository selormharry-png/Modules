variable "aws_region" {
  description = "AWS region to provision resources in"
  type        = string
  default     = "us-east-1"
}

variable "name_prefix" {
  description = "Prefix for resource names"
  type        = string
  default     = "module-2-webserver"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "public_subnet_az" {
  description = "Availability zone for the public subnet"
  type        = string
  default     = "us-east-1a"
}

variable "public_subnet_cidr_2" {
  description = "CIDR block for the second public subnet"
  type        = string
  default     = "10.0.2.0/24"
}

variable "public_subnet_az_2" {
  description = "Availability zone for the second public subnet"
  type        = string
  default     = "us-east-1b"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "Optional EC2 key pair name for SSH access"
  type        = string
  default     = null
}

variable "asg_min_size" {
  description = "Minimum number of autoscaling instances"
  type        = number
  default     = 2
}

variable "asg_max_size" {
  description = "Maximum number of autoscaling instances"
  type        = number
  default     = 5
}

variable "asg_desired_capacity" {
  description = "Desired capacity for the autoscaling group"
  type        = number
  default     = 2
}

variable "body_note" {
  description = "Content written into the Apache homepage on launch"
  type        = string
  default     = "Welcome to Harry's Apache web server."
}
