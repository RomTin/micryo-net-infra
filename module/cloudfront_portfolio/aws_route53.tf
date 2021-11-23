# aws_route53.tf

resource "aws_route53_record" "portfolio" {
  name    = tolist(aws_acm_certificate.portfolio.domain_validation_options)[0].resource_record_name
  records = [tolist(aws_acm_certificate.portfolio.domain_validation_options)[0].resource_record_value]
  type    = tolist(aws_acm_certificate.portfolio.domain_validation_options)[0].resource_record_type
  zone_id = var.zone_id
  ttl     = var.ttl
}