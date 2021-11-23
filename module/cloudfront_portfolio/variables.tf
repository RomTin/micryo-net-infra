# variables.tf

locals {
  name = "${var.env}-portfolio-micryo-net"
}

variable "env" {
  type        = string
  description = "環境識別子"
}

variable "portfolio_domain" {
  type        = string
  description = "環境で使用するドメイン"
}

variable "zone_id" {
  type        = string
  description = "レコード登録先のRoute53ゾーンのID"
}

variable "ttl" {
  type        = number
  description = "Route53レコードのTTL"
}

variable "log_bucket_domain_name" {
  type        = string
  description = "CloudFrontのログ保管先S3バケットのドメイン名"
}