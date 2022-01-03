# aws_cloudfront_distribution.tf

resource "aws_cloudfront_distribution" "portfolio" {
  comment             = local.name
  aliases             = [var.portfolio_domain]
  enabled             = true
  price_class         = "PriceClass_100"
  http_version        = "http2"
  is_ipv6_enabled     = false
  web_acl_id          = null
  default_root_object = "index.html"

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

  dynamic "custom_error_response" {
    for_each = [
      403,
      404
    ]
    content {
      error_caching_min_ttl = 10
      error_code            = custom_error_response.value
      response_code         = 404
      response_page_path    = "/blog/404/"
    }
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
    min_ttl                = 3600
    default_ttl            = 3600
    max_ttl                = 3600
    compress               = true

    function_association {
      event_type   = "viewer-request"
      function_arn = aws_cloudfront_function.auth.arn
    }

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
