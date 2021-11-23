# github_webhook.tf

resource "github_repository_webhook" "webhook" {
  active     = true
  events     = ["push"]
  repository = var.repository_name

  configuration {
    url          = aws_codebuild_webhook.webhook.payload_url
    secret       = aws_codebuild_webhook.webhook.secret
    content_type = "json"
    insecure_ssl = false
  }
}

