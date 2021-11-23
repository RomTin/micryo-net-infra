# aws_route53.tf

resource "aws_route53_record" "portfolio_acm" {
  name    = tolist(aws_acm_certificate.portfolio.domain_validation_options)[0].resource_record_name
  records = [tolist(aws_acm_certificate.portfolio.domain_validation_options)[0].resource_record_value]
  type    = tolist(aws_acm_certificate.portfolio.domain_validation_options)[0].resource_record_type
  zone_id = var.zone_id
  ttl     = var.ttl
}

resource "aws_route53_record" "portfolio" {
  name    = var.portfolio_domain
  type    = "A"
  zone_id = var.zone_id

  alias {
    name                   = aws_cloudfront_distribution.portfolio.domain_name
    zone_id                = aws_cloudfront_distribution.portfolio.hosted_zone_id
    evaluate_target_health = false
  }
}