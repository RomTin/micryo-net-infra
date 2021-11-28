# aws_cloudfront_function.tf

resource "aws_cloudfront_function" "auth" {
  name    = local.function_name
  runtime = "cloudfront-js-1.0"
  publish = true
  code = templatefile("${path.module}/src/auth.js", {
    password     = var.basic_auth_password
    auth_enabled = length(var.basic_auth_password) > 0 ? "true" : "false"
  })
}
