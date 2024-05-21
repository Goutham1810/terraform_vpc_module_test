terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }

  backend "s3" {
    bucket = "somustack-remote-state"
    key    = "terraform_vpc_module_test"
    region = "us-east-1"
    dynamodb_table = "somustack-locking"
  }
}

# Providing Authentication Here
provider "aws" {
  region = "us-east-1"
}