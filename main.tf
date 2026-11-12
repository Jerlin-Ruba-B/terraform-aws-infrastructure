module "vpc" {
  source = "./modules/vpc"

  vpc_cidr           = "10.0.0.0/16"
  vpc_name           = "terraform-project-vpc"
  public_subnet_cidr = "10.0.1.0/24"
  availability_zone  = "ap-south-1a"
}

module "security_group" {
  source = "./modules/security-group"

  vpc_id              = module.vpc.vpc_id
  ssh_cidr            = "110.226.113.130/32"
  security_group_name = "terraform-project-sg"
}

module "ec2" {
  source = "./modules/ec2"

  ami_id            = var.ami_id
  instance_type     = "t3.micro"
  subnet_id         = module.vpc.public_subnet_id
  security_group_id = module.security_group.security_group_id

  instance_name = "terraform-project-ec2"
  key_name      = var.key_name
}
