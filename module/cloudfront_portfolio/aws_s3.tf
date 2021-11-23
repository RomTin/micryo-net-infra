# aws_s3.tf

resource "aws_s3_bucket" "portfolio" {
  bucket = local.name
  acl    = "private"
  versioning {
    enabled = true
  }

  logging {
    target_bucket = var.log_bucket_id
    target_prefix = "${local.name}_s3/"
  }

  tags = {
    Name = local.name
  }
}

resource "aws_s3_bucket_public_access_block" "portfolio" {
  bucket                  = aws_s3_bucket.portfolio.bucket
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}