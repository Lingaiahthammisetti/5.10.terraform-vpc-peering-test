terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.58.0"
    }
  }
backend "s3" {
  bucket ="aws-vpc-peering-test-remote-state"
  key="aws-vpc-key"
  region="us-east-1"
  dynamodb_table="aws-vpc-peering-test-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}

