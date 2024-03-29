// Provider configuration
terraform {
 required_providers {
   aws = {
     source  = "hashicorp/aws"
     version = "~> 3.0"
   }
   kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.10"
    }
 }
# This is just a test line, ignore.
backend "s3" {
    # Replace this with your bucket name!
    bucket         = "terraform-vtb"
    key            = "global/s3/terraform.tfstate"
    region         = "us-east-1"
    # Replace this with your DynamoDB table name!
    dynamodb_table = "vtb-terraform-locks"
    encrypt        = true
  }
}
provider "aws" {
  region = "us-east-1"
}