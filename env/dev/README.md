## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0.11 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 3.66 |

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_AWS_ACCESS_KEY_ID"></a> [AWS\_ACCESS\_KEY\_ID](#input\_AWS\_ACCESS\_KEY\_ID) | Terraform実行用IAMユーザーのアクセスキーID | `string` | n/a | yes |
| <a name="input_AWS_DEFAULT_REGION"></a> [AWS\_DEFAULT\_REGION](#input\_AWS\_DEFAULT\_REGION) | Terraform実行時のデフォルトリージョン | `string` | n/a | yes |
| <a name="input_AWS_SECRET_ACCESS_KEY"></a> [AWS\_SECRET\_ACCESS\_KEY](#input\_AWS\_SECRET\_ACCESS\_KEY) | Terraform実行用IAMユーザーのシークレットアクセスキー | `string` | n/a | yes |
| <a name="input_GITHUB_TOKEN"></a> [GITHUB\_TOKEN](#input\_GITHUB\_TOKEN) | GitHub用パーソナルアクセストークン | `string` | n/a | yes |
| <a name="input_NOTIFICATION_EMAIL"></a> [NOTIFICATION\_EMAIL](#input\_NOTIFICATION\_EMAIL) | 各種アラートの通知先に使用するEメールアドレス | `string` | n/a | yes |
| <a name="input_env_root_domain"></a> [env\_root\_domain](#input\_env\_root\_domain) | 環境で使用するドメイン | `string` | n/a | yes |

## Outputs

No outputs.
