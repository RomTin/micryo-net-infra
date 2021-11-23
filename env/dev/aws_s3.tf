# aws_s3.tf

resource "aws_s3_bucket" "log" {
  bucket = local.log_bucket_name
  acl    = "private"

  tags = {
    Name = local.log_bucket_name
  }
}

resource "aws_s3_bucket_public_access_block" "log" {
  bucket                  = aws_s3_bucket.log.bucket
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}