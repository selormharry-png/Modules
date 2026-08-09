terraform {
  required_version = ">= 1.5.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "web_cluster" {
  source = "./ec2_asg_module"

  aws_region           = var.aws_region
  name_prefix          = var.name_prefix
  key_name             = var.key_name
  instance_type        = var.instance_type
  asg_min_size         = var.asg_min_size
  asg_max_size         = var.asg_max_size
  asg_desired_capacity = var.asg_desired_capacity
  body_note            = var.body_note
}
