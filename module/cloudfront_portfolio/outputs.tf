# outputs.tf

output "cloudfront_portfolio" {
  value = aws_cloudfront_distribution.portfolio
}

output "s3_portfolio" {
  value = aws_s3_bucket.portfolio
}