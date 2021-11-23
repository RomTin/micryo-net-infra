# variables.tf

locals {
  env             = "dev"
  log_bucket_name = "log-bucket-micryo-net"
  athena_id       = "logs_micryo_net"
}

variable "env_root_domain" {
  type        = string
  description = "環境で使用するドメイン"
}