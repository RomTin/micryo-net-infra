# aws_cloudfront.tf

module "portfolio" {
  source = "../../module/cloudfront_portfolio"
  providers = {
    aws.use1 = aws.use1
  }
  env                    = local.env
  portfolio_domain       = var.env_root_domain
  zone_id                = data.aws_route53_zone.root_domain.zone_id
  ttl                    = 300
  log_bucket_domain_name = aws_s3_bucket.log.bucket_domain_name
  log_bucket_id          = aws_s3_bucket.log.id
}