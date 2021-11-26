# aws_iam.tf

resource "aws_iam_role" "cd_role" {
  name = local.cd_role_name
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect = "Allow"
      Principal = {
        Service = "codebuild.amazonaws.com"
      }
      Action = "sts:AssumeRole"
    }]
  })
  tags = {
    Name = local.cd_role_name
  }
}

resource "aws_iam_role_policy" "cd_role_policy" {
  name = local.cd_role_name
  role = aws_iam_role.cd_role.name
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Resource = ["*"]
        Action = [
          "s3:PutObject",
          "s3:GetObject",
          "s3:DeleteObject",
          "s3:ListBucket"
        ]
      },
      {
        Effect   = "Allow"
        Resource = ["*"]
        Action = [
          "logs:PutLogEvents",
          "logs:CreateLogStream"
        ]
      },
      {
        Effect   = "Allow"
        Resource = ["*"]
        Action   = ["ssm:GetParameters"]
      },
      {
        Effect   = "Allow"
        Resource = ["*"]
        Action   = ["cloudfront:CreateInvalidation"]
      }
    ]
  })
}

resource "aws_iam_role" "lambda_edge_role" {
  name = local.lambda_edge_role_name
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect = "Allow"
      Principal = {
        Service = [
          "lambda.amazonaws.com",
          "edgelambda.amazonaws.com"
        ]
      }
      Action = "sts:AssumeRole"
    }]
  })
  tags = {
    Name = local.lambda_edge_role_name
  }
}

resource "aws_iam_role_policy" "lambda_edge_role_policy" {
  name = local.lambda_edge_role_name
  role = aws_iam_role.lambda_edge_role.name
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Resource = ["arn:aws:logs:*:*:*"]
        Action = [
          "logs:CreateLogGroup",
          "logs:CreateLogStream",
          "logs:PutLogEvents"
        ]
      }
    ]
  })
}
