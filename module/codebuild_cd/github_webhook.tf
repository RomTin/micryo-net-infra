# github_webhook.tf

# GitHubユーザー名に大文字が混じっているとwebhookをトリガーするときにheaderの不一致でエラーが発生する
# https://stackoverflow.com/questions/60479945/github-webhook-rejected-by-aws-codebuild
//resource "github_repository_webhook" "webhook" {
//  active     = true
//  events     = ["push"]
//  repository = var.repository_name
//
//  configuration {
//    url          = aws_codebuild_webhook.webhook.payload_url
//    secret       = aws_codebuild_webhook.webhook.secret
//    content_type = "json"
//    insecure_ssl = false
//  }
//}

