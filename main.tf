provider "aws" {
  region = "us-west-1"
  access_key = "{var.access_key}"
  secret_key = "{var.secret_key}"
}
data "aws_availability_zones" "azs" {
  state = "available"
}
# data "aws_availability_zones" "azs" will provide the list of availability zone for the us-west-1 region