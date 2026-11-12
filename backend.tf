terraform {
  backend "s3" {
    bucket       = "jerrub-terraform-state-2026"
    key          = "terraform-aws-infrastructure/terraform.tfstate"
    region       = "ap-south-1"
    encrypt      = true
    use_lockfile = true
  }
}