## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0.11 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 3.66 |
| <a name="requirement_github"></a> [github](#requirement\_github) | ~> 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 3.66 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_cd"></a> [cd](#module\_cd) | ../../module/codebuild_cd | n/a |
| <a name="module_portfolio"></a> [portfolio](#module\_portfolio) | ../../module/cloudfront_portfolio | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_iam_role.cd_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_role) | data source |
| [aws_route53_zone.root_domain](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/route53_zone) | data source |
| [aws_s3_bucket.log](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/s3_bucket) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_AWS_ACCESS_KEY_ID"></a> [AWS\_ACCESS\_KEY\_ID](#input\_AWS\_ACCESS\_KEY\_ID) | Terraform実行用IAMユーザーのアクセスキーID | `string` | n/a | yes |
| <a name="input_AWS_DEFAULT_REGION"></a> [AWS\_DEFAULT\_REGION](#input\_AWS\_DEFAULT\_REGION) | Terraform実行時のデフォルトリージョン | `string` | n/a | yes |
| <a name="input_AWS_SECRET_ACCESS_KEY"></a> [AWS\_SECRET\_ACCESS\_KEY](#input\_AWS\_SECRET\_ACCESS\_KEY) | Terraform実行用IAMユーザーのシークレットアクセスキー | `string` | n/a | yes |
| <a name="input_GITHUB_TOKEN"></a> [GITHUB\_TOKEN](#input\_GITHUB\_TOKEN) | GitHub用パーソナルアクセストークン | `string` | n/a | yes |
| <a name="input_NOTIFICATION_EMAIL"></a> [NOTIFICATION\_EMAIL](#input\_NOTIFICATION\_EMAIL) | 各種アラートの通知先に使用するEメールアドレス | `string` | n/a | yes |
| <a name="input_basic_auth_password"></a> [basic\_auth\_password](#input\_basic\_auth\_password) | ベーシック認証に使用するパスワード, 空文字列の場合ベーシック認証を無効化する | `string` | `""` | no |
| <a name="input_env_root_domain"></a> [env\_root\_domain](#input\_env\_root\_domain) | 環境で使用するドメイン | `string` | n/a | yes |

## Outputs

No outputs.
