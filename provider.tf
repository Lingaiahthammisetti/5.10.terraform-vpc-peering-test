terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.58.0"
    }
  }
backend "s3" {
  bucket = "lingadevops-remote-state"
  key = "vpc-module-test-peering"
  region = "us-east-1"
  dynamodb_table = "lingaiah-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}

