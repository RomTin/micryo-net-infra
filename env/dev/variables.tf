# variables.tf

locals {
  env             = "dev"
  log_bucket_name = "${local.env}-log-bucket-micryo-net"
  athena_id       = "logs-micryo-net"
}

variable "env_root_domain" {
  type        = string
  description = "環境で使用するドメイン"
}