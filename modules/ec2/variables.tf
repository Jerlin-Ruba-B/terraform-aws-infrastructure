variable "ami_id" {
  description = "Amazon Linux AMI ID"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "subnet_id" {
  description = "Public subnet ID"
  type        = string
}

variable "security_group_id" {
  description = "Security Group ID"
  type        = string
}

variable "instance_name" {
  description = "EC2 instance name"
  type        = string
  default     = "terraform-web-server"
}

variable "key_name" {
  description = "Existing AWS EC2 key pair name"
  type        = string
  default     = null
}