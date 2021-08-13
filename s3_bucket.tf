provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_s3_bucket" "bucket1" {
  bucket = "tf-test-bucket00000"
  acl    = "private"

  tags = {
    Name        = "test_bucket"
  }
}

terraform {
  backend "s3" {
    bucket = "tf-test-bucket00000"
    key    = "terraform.tfstate"
    region = "ap-northeast-1"
  }
}