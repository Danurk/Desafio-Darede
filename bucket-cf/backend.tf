/*
terraform {
  backend "s3" {
    bucket = "carlos-lab-bucket-site"
    key = "terraform.tfstate"
    region = "us-east-1"
    workspace_key_prefix = "mywebsite"
    dynamodb_table = "carlosspot-backend"
    encrypt = true
  }
}
*/