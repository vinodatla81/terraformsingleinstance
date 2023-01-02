terraform {
  backend "s3" {
    bucket         = "devopsb30terraformstates"
    key            = "dev-devopsb30.tfstate"
    region         = "us-east-1"
    dynamodb_table = "devopsb30-dynamodb-locking"
    encrypt        = true
  }
}