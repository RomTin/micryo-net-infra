# aws_acm.tf

resource "aws_acm_certificate" "portfolio" {
  provider          = aws.use1
  domain_name       = var.portfolio_domain
  validation_method = "DNS"
  lifecycle {
    create_before_destroy = true
  }
  tags = {
    Name = local.name
  }
}

resource "aws_acm_certificate_validation" "portfolio" {
  provider                = aws.use1
  certificate_arn         = aws_acm_certificate.portfolio.arn
  validation_record_fqdns = [aws_route53_record.portfolio_acm.fqdn]
}
