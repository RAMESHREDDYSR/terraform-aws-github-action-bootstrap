provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
  access_key = "AKIAW5XRZWCZ3IZQ37SK"
  secret_key = "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"
}

terraform {
  backend "s3" {
     bucket = "ga-aws-tf"
     key    = "default-infrastructure"
     region = "us-east-1"
   }
 }

resource "aws_s3_bucket" "terraform_state" {
  bucket = "ga-aws-tf"

  versioning {
    enabled = true
  }
}
