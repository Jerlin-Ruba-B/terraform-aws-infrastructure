variable "ami_id" {
  description = "Amazon Linux AMI ID"
  type        = string
}

variable "key_name" {
  description = "Existing EC2 key pair name"
  type        = string
  default     = null
}