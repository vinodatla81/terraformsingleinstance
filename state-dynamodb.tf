#https://blog.gruntwork.io/how-to-manage-terraform-state-28f5697e68fa
resource "aws_dynamodb_table" "terraform_locks" {
  name         = "devopsb30-dynamodb-locking"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}