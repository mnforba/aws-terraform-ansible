terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  access_key = "AKIAYITVTX422X64C3CC"
  secret_key = "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"
  region = "us-east-1"
}
data "aws_availability_zones" "azs" {
  state = "available"
}
# data "aws_availability_zones" "azs" will provide the list of availability zone for the us-west-1 region