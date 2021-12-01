# aws_codebuild.tf

resource "aws_codebuild_project" "cd" {
  name         = local.name
  service_role = var.role_arn
  artifacts {
    type = "NO_ARTIFACTS"
  }
  environment {
    compute_type = var.compute_type
    image        = "aws/codebuild/standard:5.0-21.10.15"
    type         = "LINUX_CONTAINER"

    dynamic "environment_variable" {
      for_each = var.environment_variables
      content {
        type  = environment_variable.value["type"]
        name  = environment_variable.value["name"]
        value = environment_variable.value["value"]
      }
    }
  }

  logs_config {
    cloudwatch_logs {
      status     = "ENABLED"
      group_name = aws_cloudwatch_log_group.cd.name
    }
    s3_logs {
      status = "DISABLED"
    }
  }

  source {
    type                = "GITHUB"
    location            = var.repository_url
    report_build_status = true
    buildspec           = var.buildspec_path
    git_submodules_config {
      fetch_submodules = false
    }
  }

  tags = {
    Name = local.name
  }

  lifecycle {
    ignore_changes = [source]
  }
}

resource "aws_codebuild_webhook" "webhook" {
  project_name = aws_codebuild_project.cd.name
  build_type   = "BUILD"
  filter_group {
    dynamic "filter" {
      for_each = var.webhook_filter_group
      content {
        type                    = filter.value["type"]
        pattern                 = filter.value["pattern"]
        exclude_matched_pattern = filter.value["exclude_matched_pattern"]
      }
    }
  }
}

resource "aws_codebuild_source_credential" "cred" {
  auth_type   = "PERSONAL_ACCESS_TOKEN"
  server_type = "GITHUB"
  token       = var.github_pat
}