# Project
variable "region" {
  type        = string
  description = "Project Region"
  default     = "us-west1"
}

variable "project_id" {
  type        = string
  description = "Project ID"
}

# Network
variable "main_vpc_name" {
  type        = string
  description = "Main VPC name"
}

variable "private_subnet_name" {
  type        = string
  description = "Private Subnet Name"
}

variable "private_subnet_ip_cidr_range" {
  type        = string
  description = "IP CIDR range for the private subnet"
}

