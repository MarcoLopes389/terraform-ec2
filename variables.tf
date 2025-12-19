variable "cidr_block" {
  type        = string
  description = "Networking CIDR block to use in the VPC config"
}

variable "project_name" {
  type        = string
  description = "The name of the project to be used in name tags"
}