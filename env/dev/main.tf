# main.tf

terraform {
  required_version = "~> 1.0.11"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.66"
    }
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region     = var.AWS_DEFAULT_REGION
  access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_ACCESS_KEY
  default_tags {
    tags = {
      Env                = "dev"
      ManagedByTerraform = true
      Repository         = "micryo-net-infra"
    }
  }
}

provider "aws" {
  alias      = "use1"
  region     = "us-east-1"
  access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_ACCESS_KEY
  default_tags {
    tags = {
      Env                = "dev"
      ManagedByTerraform = true
      Repository         = "micryo-net-infra"
    }
  }
}

provider "github" {
  token = var.GITHUB_TOKEN
  owner = "RomTin"
}

variable "AWS_ACCESS_KEY_ID" {
  type        = string
  description = "Terraform実行用IAMユーザーのアクセスキーID"
}

variable "AWS_SECRET_ACCESS_KEY" {
  type        = string
  description = "Terraform実行用IAMユーザーのシークレットアクセスキー"
}

variable "AWS_DEFAULT_REGION" {
  type        = string
  description = "Terraform実行時のデフォルトリージョン"
}

variable "GITHUB_TOKEN" {
  type        = string
  description = "GitHub用パーソナルアクセストークン"
}

variable "NOTIFICATION_EMAIL" {
  type        = string
  description = "各種アラートの通知先に使用するEメールアドレス"
}
