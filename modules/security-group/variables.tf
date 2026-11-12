variable "vpc_id" {
  description = "VPC ID for security group"
  type        = string
}

variable "ssh_cidr" {
  description = "Allowed CIDR for SSH access"
  type        = string
}

variable "security_group_name" {
  description = "Security group name"
  type        = string
}