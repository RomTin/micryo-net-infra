# data.tf

data "aws_route53_zone" "root_domain" {
  name = "${var.env_root_domain}."
}