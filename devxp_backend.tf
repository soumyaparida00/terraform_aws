resource "aws_s3_bucket" "terraform_backend_bucket" {
      bucket = "terraform-state-gddkc4tx3sykevch99wysrxj0xhireznvt33t9eoplorv"
}

terraform {
  required_providers {
    aws =  {
    source = "hashicorp/aws"
    version = ">= 2.7.0"
    }
  }
}

provider "aws" {
    region = "us-west-2"
}

