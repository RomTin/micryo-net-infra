## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0.11 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 3.66 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 3.66 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_athena_database.logs](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/athena_database) | resource |
| [aws_athena_workgroup.logs](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/athena_workgroup) | resource |
| [aws_budgets_budget.cost_total](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/budgets_budget) | resource |
| [aws_iam_role.cd_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy.cd_role_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [aws_s3_bucket.athena](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket.log](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_public_access_block.athena](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block) | resource |
| [aws_s3_bucket_public_access_block.log](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block) | resource |
| [aws_canonical_user_id.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/canonical_user_id) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_AWS_ACCESS_KEY_ID"></a> [AWS\_ACCESS\_KEY\_ID](#input\_AWS\_ACCESS\_KEY\_ID) | Terraform実行用IAMユーザーのアクセスキーID | `string` | n/a | yes |
| <a name="input_AWS_DEFAULT_REGION"></a> [AWS\_DEFAULT\_REGION](#input\_AWS\_DEFAULT\_REGION) | Terraform実行時のデフォルトリージョン | `string` | n/a | yes |
| <a name="input_AWS_SECRET_ACCESS_KEY"></a> [AWS\_SECRET\_ACCESS\_KEY](#input\_AWS\_SECRET\_ACCESS\_KEY) | Terraform実行用IAMユーザーのシークレットアクセスキー | `string` | n/a | yes |
| <a name="input_GITHUB_TOKEN"></a> [GITHUB\_TOKEN](#input\_GITHUB\_TOKEN) | GitHub用パーソナルアクセストークン | `string` | n/a | yes |
| <a name="input_NOTIFICATION_EMAIL"></a> [NOTIFICATION\_EMAIL](#input\_NOTIFICATION\_EMAIL) | 各種アラートの通知先に使用するEメールアドレス | `string` | n/a | yes |

## Outputs

No outputs.
