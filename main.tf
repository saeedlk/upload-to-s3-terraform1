provider "aws" {
  region  = "us-east-1"
}

resource "aws_s3_bucket" "b" {
  bucket = "test-bucket-lk-from-github"

  tags = {
    Name = var.s3_name
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.b.id
  acl    = "private"
}
