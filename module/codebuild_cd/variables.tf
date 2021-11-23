# variables.tf

locals {
  name = "${var.env}-portfolio-ssg-deploy-micryo-net"
}

variable "env" {
  type        = string
  description = "環境識別子"
}

variable "compute_type" {
  type        = string
  description = "CodeBuildを実行するためのインスタンスタイプ"
}

variable "repository_name" {
  type        = string
  description = "SSG用ソースコードを管理するためのリポジトリ名"
}

variable "repository_url" {
  type        = string
  description = "SSG用ソースコードを管理するためのリポジトリURL"
}

variable "buildspec_path" {
  type        = string
  description = "CodeBuildを実行するためのbuilsdpec.ymlのパス"
}

variable "role_arn" {
  type        = string
  description = "CodeBuildを実行するためのIAMロールのARN"
}

variable "environment_variables" {
  type = list(object({
    type  = string
    name  = string
    value = string
  }))
  description = "環境変数のリスト"
}

variable "webhook_filter_group" {
  type = list(object({
    type                    = string
    pattern                 = string
    exclude_matched_pattern = string
  }))
  description = "CodeBuildのwebhookをトリガーするためのフィルタグループ"
}

variable "github_pat" {
  type        = string
  description = "GitHubのパーソナルアクセストークン"
}