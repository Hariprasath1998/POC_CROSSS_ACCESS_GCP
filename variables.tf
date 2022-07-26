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

# APIs to be enabled
variable "gcp_service_list" {
  description = "The list of apis necessary for the project"
  type        = list(string)
  default = [
    "compute.googleapis.com",
    "container.googleapis.com",
    "cloudresourcemanager.googleapis.com",
    "serviceusage.googleapis.com"
  ]
}

# Service Account
variable "default_service_account_id" {
  type        = string
  description = "Tyk Cluster name"
}

# Cluster
variable "tyk_cluster_name" {
  type        = string
  description = "Tyk Cluster name"
}

variable "tyk_node_pool_name" {
  type        = string
  description = "Tyk Node pool name"
}

variable "machine_type" {
  type        = string
  description = "Node Machine type"
}