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
backend "s3" {
    # Replace this with your bucket name!
    bucket         = "s3-bucket"
    key            = "global/s3/terraform.tfstate"
    region         = "ap-south-1"
    # Replace this with your DynamoDB table name!
    dynamodb_table = "vtb-terraform-locks"
    encrypt        = true
  }
}