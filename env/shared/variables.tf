# variables.tf

locals {
  cost_limit         = 20 # 請求額の上限値（USD）
  athena_id          = "logs-micryo-net"
  athena_bucket_name = "athena-data-bucket-micryo-net"
}