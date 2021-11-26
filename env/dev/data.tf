# data.tf

data "aws_route53_zone" "root_domain" {
  name = "${var.env_root_domain}."
}

data "aws_s3_bucket" "log" {
  bucket = local.log_bucket_name
}

data "aws_iam_role" "cd_role" {
  name = local.cd_role_name
}
