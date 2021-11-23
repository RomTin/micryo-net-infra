# aws_cloudfront_distribution.tf

resource "aws_cloudfront_distribution" "portfolio" {
  comment         = local.name
  aliases         = var.portfolio_domain
  enabled         = true
  price_class     = "PriceClass_100"
  http_version    = "http2"
  is_ipv6_enabled = false
  web_acl_id      = null

  viewer_certificate {
    acm_certificate_arn      = aws_acm_certificate_validation.portfolio.certificate_arn
    minimum_protocol_version = "TLSv1.2_2019"
    ssl_support_method       = "sni-only"
  }

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  logging_config {
    bucket          = var.log_bucket_domain_name
    prefix          = "${local.name}_cloudfront/"
    include_cookies = true
  }

  origin {
    domain_name = aws_s3_bucket.portfolio.bucket_regional_domain_name
    origin_id   = aws_s3_bucket.portfolio.bucket_regional_domain_name
    s3_origin_config {
      origin_access_identity = aws_cloudfront_origin_access_identity.this.cloudfront_access_identity_path
    }
  }

  default_cache_behavior {
    allowed_methods        = ["GET", "HEAD"]
    cached_methods         = ["GET", "HEAD"]
    target_origin_id       = aws_s3_bucket.portfolio.bucket_regional_domain_name
    viewer_protocol_policy = "redirect-to-https"
    forwarded_values {
      query_string = true
      cookies {
        forward = "none"
      }
    }
  }

  tags = {
    Name = local.name
  }
}

resource "aws_cloudfront_origin_access_identity" "this" {
  comment = local.name
}