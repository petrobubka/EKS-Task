terraform {
  backend "s3" {
    bucket         = "var.bucket_name"
    key            = "terraform.tfstate"
    region         = "us-west-1"
    encrypt        = true
  }
}