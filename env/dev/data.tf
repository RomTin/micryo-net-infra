# data.tf

data "aws_route53_zone" "root_domain" {
  name = "${var.env_root_domain}."
}

data "aws_canonical_user_id" "current" {}

data "aws_cloudfront_canonical_user_id" "current" {}