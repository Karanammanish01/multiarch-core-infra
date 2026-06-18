terraform {
  backend "s3" {
    bucket         = "multiarch-tf-state-manish-demo"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "multiarch-tf-locks"
    encrypt        = true
  }
}