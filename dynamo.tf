resource "aws_dynamodb_table" "terraform_locks" {
  name         = "terraform-up-and-running-locks"
  region = "ap-south-1"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
}
