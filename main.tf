provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
}

terraform {
  backend "s3" {
     bucket = "ga-aws-tf"
     key    = "default-infrastructure-1"
     region = "us-east-1"
   }
 }

resource "aws_s3_bucket" "terraform_state" {
  bucket = "ga-aws-tf"

  versioning {
    enabled = true
  }
}
