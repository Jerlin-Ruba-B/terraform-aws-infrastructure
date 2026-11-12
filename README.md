# Modular AWS Infrastructure Provisioning Using Terraform

## Project Overview

This project demonstrates Infrastructure as Code (IaC) by provisioning AWS infrastructure using Terraform. The infrastructure is organized into reusable Terraform modules to improve maintainability and reusability.

## Technologies Used

- Terraform
- AWS EC2
- AWS VPC
- AWS Subnets
- Internet Gateway
- Route Tables
- Security Groups
- Amazon Linux 2023
- Nginx
- Linux / SSH
- Amazon S3 Remote State Backend

## Architecture

The project provisions the following AWS resources:

1. Custom VPC with CIDR block `10.0.0.0/16`
2. Public subnet with CIDR block `10.0.1.0/24`
3. Internet Gateway
4. Public route table and subnet association
5. Security Group with SSH and HTTP access
6. EC2 instance using Terraform
7. Nginx web server running on Amazon Linux 2023

## Terraform Modules

### VPC Module
- Creates a custom VPC.
- Creates a public subnet.
- Configures an Internet Gateway.
- Configures public routing.

### Security Group Module
- Creates an AWS Security Group.
- Configures inbound access rules.

### EC2 Module
- Provisions an EC2 instance.
- Connects the instance to the public subnet.
- Attaches the Security Group.
- Configures public IP assignment.

## Remote State Management

Configured an Amazon S3 backend for Terraform state storage, with bucket versioning and state locking enabled.

## Deployment Steps

Clone the repository:

```bash
git clone https://github.com/Jerlin-Ruba-B/terraform-aws-infrastructure.git
cd terraform-aws-infrastructure
```

Initialize Terraform:

```bash
terraform init
```

Validate the configuration:

```bash
terraform validate
```

Review the deployment plan:

```bash
terraform plan
```

Deploy infrastructure:

```bash
terraform apply
```

## Web Server Verification

Connected to the EC2 instance using SSH, installed Nginx, and verified web server accessibility through the EC2 public IP.

## Cleanup

To remove the provisioned AWS infrastructure:

```bash
terraform destroy
```

## Skills Demonstrated

- Infrastructure as Code
- Terraform modules
- Terraform variables and outputs
- Terraform remote state management
- AWS networking
- EC2 provisioning
- Security Group configuration
- Linux server administration
- SSH connectivity
- Nginx deployment

## Author

AWS Cloud & Junior DevOps Engineer Aspirant