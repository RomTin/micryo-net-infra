# data.tf

data "aws_route53_zone" "root_domain" {
  name = "${var.env_root_domain}."
}

data "aws_s3_bucket" "log" {
  bucket = local.log_bucket_name
}
