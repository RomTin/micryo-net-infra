# variables.tf

locals {
  name          = "${var.env}-portfolio-micryo-net"
  function_name = "${var.env}-basic-auth-micryo-net"
  lambda_name   = "${var.env}-index-completion-micryo-net"
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
  description = "ログ保管先S3バケットのドメイン名"
}

variable "log_bucket_name" {
  type        = string
  description = "ログ保管先S3バケットの名前"
}

variable "log_bucket_id" {
  type        = string
  description = "ログ保管先S3バケットのID"
}

variable "athena_id" {
  type        = string
  description = "Athenaのデータベース/ワークグループのID"
}

variable "basic_auth_password" {
  type        = string
  description = "ベーシック認証に使用するパスワード, 空文字列の場合ベーシック認証を無効化する"
}

variable "lambda_edge_role" {
  type        = string
  description = "Lambda@Edgeを実行するためのIAMロール"
}