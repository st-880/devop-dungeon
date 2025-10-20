terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"  # Зміни на свій регіон, якщо потрібно
}

resource "aws_s3_bucket" "hunter_bucket" {
  bucket = "hunter-devops-bucket-${random_string.suffix.result}"

  tags = {
    Name        = "Hunter DevOps Bucket"
    Environment = "Learning"
  }
}

resource "random_string" "suffix" {
  length  = 8
  special = false
  upper   = false
}
