# aws_cloudwatch.tf

resource "aws_cloudwatch_log_group" "cd" {
  name = "/aws/codebuild/${local.name}"
  tags = {
    Name = "/aws/codebuild/${local.name}"
  }
}