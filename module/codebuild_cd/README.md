## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0.11 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 3.66 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 3.66 |
| <a name="provider_github"></a> [github](#provider\_github) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_log_group.cd](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group) | resource |
| [aws_codebuild_project.cd](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project) | resource |
| [aws_codebuild_webhook.webhook](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_webhook) | resource |
| [github_repository_webhook.webhook](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_webhook) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_buildspec_path"></a> [buildspec\_path](#input\_buildspec\_path) | CodeBuildを実行するためのbuilsdpec.ymlのパス | `string` | n/a | yes |
| <a name="input_compute_type"></a> [compute\_type](#input\_compute\_type) | CodeBuildを実行するためのインスタンスタイプ | `string` | n/a | yes |
| <a name="input_env"></a> [env](#input\_env) | 環境識別子 | `string` | n/a | yes |
| <a name="input_environment_variables"></a> [environment\_variables](#input\_environment\_variables) | 環境変数のリスト | <pre>list(object({<br>    type  = string<br>    name  = string<br>    value = string<br>  }))</pre> | n/a | yes |
| <a name="input_repository_name"></a> [repository\_name](#input\_repository\_name) | SSG用ソースコードを管理するためのリポジトリ名 | `string` | n/a | yes |
| <a name="input_repository_url"></a> [repository\_url](#input\_repository\_url) | SSG用ソースコードを管理するためのリポジトリURL | `string` | n/a | yes |
| <a name="input_role_arn"></a> [role\_arn](#input\_role\_arn) | CodeBuildを実行するためのIAMロールのARN | `string` | n/a | yes |
| <a name="input_webhook_filter_group"></a> [webhook\_filter\_group](#input\_webhook\_filter\_group) | CodeBuildのwebhookをトリガーするためのフィルタグループ | <pre>list(object({<br>    type                    = string<br>    pattern                 = string<br>    exclude_matched_pattern = string<br>  }))</pre> | n/a | yes |

## Outputs

No outputs.
