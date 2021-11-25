# outputs.tf

output "cloudfront_portfolio" {
  value = aws_cloudfront_distribution
}

output "s3_portfolio" {
  value = aws_s3_bucket
}