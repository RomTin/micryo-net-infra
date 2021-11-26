# variables.tf

locals {
  env                   = "dev"
  log_bucket_name       = "log-bucket-micryo-net"
  athena_id             = "logs_micryo_net"
  cd_role_name          = "codebuild-cd-role-micryo-net"
}

variable "env_root_domain" {
  type        = string
  description = "環境で使用するドメイン"
}

variable "basic_auth_password" {
  type        = string
  description = "ベーシック認証に使用するパスワード, 空文字列の場合ベーシック認証を無効化する"
  default     = ""
}
