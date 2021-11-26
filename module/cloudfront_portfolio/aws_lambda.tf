# aws_lambda.tf

data "archive_file" "index_completion" {
  type        = "zip"
  output_path = "${path.module}/src/index_completion.zip"
  source {
    content  = file("${path.module}/src/index_completion.js")
    filename = "index.js"
  }
}

resource "aws_lambda_function" "index_completion" {
  provider         = aws.use1
  filename         = data.archive_file.index_completion.output_path
  function_name    = local.lambda_name
  role             = var.lambda_edge_role
  handler          = "index.handler"
  source_code_hash = data.archive_file.index_completion.output_base64sha256
  runtime          = "nodejs14.x"
  memory_size      = 128
  timeout          = 10
}
