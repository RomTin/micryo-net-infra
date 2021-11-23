# aws_cloudfront_function.tf

resource "aws_cloudfront_function" "auth" {
  count   = length(var.basic_auth_password) > 0 ? 1 : 0
  name    = local.function_name
  runtime = "cloudfront-js-1.0"
  publish = true
  code    = file("${path.module}/src/auth.js")
}