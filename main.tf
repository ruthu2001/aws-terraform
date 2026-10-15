
terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

data "aws_ssm_parameter" "ami" {
  name = "/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
}

resource "aws_instance" "jenkins_demo" {
  ami           = data.aws_ssm_parameter.ami.value
  instance_type = var.instance_type

  tags = {
    Name        = "jenkins-terraform-demo"
    Environment = "dev"
    ManagedBy   = "Terraform"
  }
}


