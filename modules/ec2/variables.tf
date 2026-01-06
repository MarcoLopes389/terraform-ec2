variable "project_name" {
  type        = string
  description = "The name of the project to be used in name tags"
}

variable "tags" {
  type        = map(any)
  description = "The tags to add in resources"
}

variable "subnet_pub_1a" {
  type        = string
  description = "The subnet ID to attach EC2 instance"
}