terraform {
  required_version = "~> 1.10.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "my-eks-basket"
    region         = "us-east-1"
    key            = "eks/terraform.tfstate"
    dynamodb_table = "your-dynamodb-table"
    encrypt        = true
  }
}

provider "aws" {
  region  = var.aws-region
}
