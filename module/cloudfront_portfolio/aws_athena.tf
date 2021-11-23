# aws_athena.tf

resource "aws_athena_named_query" "cloudfront" {
  name      = "${local.name}-cloudfront"
  database  = var.athena_id
  workgroup = var.athena_id
  query = templatefile("${path.module}/src/athena_cloudfront.sql.tpl", {
    bucket_name = var.log_bucket_name
    prefix      = "${local.name}_cloudfront/"
  })
}

resource "aws_athena_named_query" "s3" {
  name      = "${local.name}-s3"
  database  = var.athena_id
  workgroup = var.athena_id
  query = templatefile("${path.module}/src/athena_s3.sql.tpl", {
    bucket_name = var.log_bucket_name
    prefix      = "${local.name}_s3/"
  })
}
