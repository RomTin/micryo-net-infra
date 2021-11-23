# aws_s3.tf

resource "aws_s3_bucket" "athena" {
  bucket = local.athena_bucket_name
  acl    = "private"
}

resource "aws_s3_bucket_public_access_block" "athena" {
  bucket                  = aws_s3_bucket.athena.bucket
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}