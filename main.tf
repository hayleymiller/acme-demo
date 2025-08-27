#DEMO FOR ACME
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "demo" {
  ami           = "ami-08c40ec9ead489470" # Amazon Linux 2 AMI (update per region)
  instance_type = "t3.micro" #policy will fail
  tags = {
    Name = "ACME-Demo"
  }
}
