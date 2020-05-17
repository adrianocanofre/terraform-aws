###### Common ######
variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

variable "app_name" {
  description = "Application Name"
  default     = "Homer"
}

variable "region" {
  description = "Region to create the infrastructure"
  default     = "us-east-1"
}

###### Application ######
variable "all_cidr" {
  description = ""
  default     = "0.0.0.0/0"
}

variable "http_port" {
  description = ""
  default     = 80
}

variable "lb_type" {
  description = "The type of load balancer to create(application|network)"
  default     = "application"
}

variable "http_protocol" {
  description = "Protocol HTTP"
  default     ="HTTP"
}

variable "health_check_path" {
  description = "Health check use in target"
  default     = "/api/healthcheck"
}

variable "health_check_healthy_threshold" {
  description = ""
  default     = 3
}

variable "health_check_unhealthy_threshold" {
  description = ""
  default     = 10
}

variable "health_check_timeout" {
  description = ""
  default     = 5
}

variable "health_check_interval" {
  description = ""
  default     = 10
}

variable "health_check_port" {
  description = ""
  default     = 80
}

variable "key_pair" {
  description = "The key name of the Key Pair to use for the instance"
  default     = "terraform_aws"
}

variable "workspace" {
  default = ""
}

variable "user_data" {
  default = ""
}

variable "ec2_type"{
  default = "t2.micro"
}

variable "public_subnets" {
  default = ""
}

variable "private_subnets" {
  default = ""
}

variable "vpc_id" {
  default = null
}

variable "image_mutability" {
  default = "MUTABLE"
}

### S3 ###
variable "bucket_name_env" {
  description = "Application Name"
  default     = "homer"
}

variable "bucket_name" {
  default = ""
}
variable "version_enable" {
  default = true
}

variable "create_bucket" {
  default = false
}

locals {
  lb_name     = format("%s-lb-%s",var.workspace, var.app_name)
  tg_name     = format("%s-tg-%s",var.workspace, var.app_name)
  asg_name    = format("%s-asg-%s-",var.workspace, var.app_name)
  lc_name     = format("%s-lc%s",var.workspace, var.app_name)
  bucket_name = format("%s-", var.bucket_name)
  bucket_env  = format("%s-userdata-", var.bucket_name_env)
  tags = {
    Environment = var.workspace
    Owner       = "terraform"
  }
}
