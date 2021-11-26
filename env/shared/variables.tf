# variables.tf

locals {
  cost_limit            = 20 # 請求額の上限値（USD）
  athena_id             = "logs_micryo_net"
  athena_bucket_name    = "athena-data-bucket-micryo-net"
  log_bucket_name       = "log-bucket-micryo-net"
  cd_role_name          = "codebuild-cd-role-micryo-net"
}
