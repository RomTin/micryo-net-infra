## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0.11 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 3.66 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 3.66 |
| <a name="provider_aws.use1"></a> [aws.use1](#provider\_aws.use1) | ~> 3.66 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_acm_certificate.portfolio](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate) | resource |
| [aws_acm_certificate_validation.portfolio](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate_validation) | resource |
| [aws_athena_named_query.cloudfront](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/athena_named_query) | resource |
| [aws_athena_named_query.s3](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/athena_named_query) | resource |
| [aws_cloudfront_distribution.portfolio](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_distribution) | resource |
| [aws_cloudfront_function.auth](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_function) | resource |
| [aws_cloudfront_origin_access_identity.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_origin_access_identity) | resource |
| [aws_route53_record.portfolio](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_route53_record.portfolio_acm](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_s3_bucket.portfolio](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_public_access_block.portfolio](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_athena_id"></a> [athena\_id](#input\_athena\_id) | Athenaのデータベース/ワークグループのID | `string` | n/a | yes |
| <a name="input_basic_auth_password"></a> [basic\_auth\_password](#input\_basic\_auth\_password) | ベーシック認証に使用するパスワード, 空文字列の場合ベーシック認証を無効化する | `string` | n/a | yes |
| <a name="input_env"></a> [env](#input\_env) | 環境識別子 | `string` | n/a | yes |
| <a name="input_log_bucket_domain_name"></a> [log\_bucket\_domain\_name](#input\_log\_bucket\_domain\_name) | ログ保管先S3バケットのドメイン名 | `string` | n/a | yes |
| <a name="input_log_bucket_id"></a> [log\_bucket\_id](#input\_log\_bucket\_id) | ログ保管先S3バケットのID | `string` | n/a | yes |
| <a name="input_log_bucket_name"></a> [log\_bucket\_name](#input\_log\_bucket\_name) | ログ保管先S3バケットの名前 | `string` | n/a | yes |
| <a name="input_portfolio_domain"></a> [portfolio\_domain](#input\_portfolio\_domain) | 環境で使用するドメイン | `string` | n/a | yes |
| <a name="input_ttl"></a> [ttl](#input\_ttl) | Route53レコードのTTL | `number` | n/a | yes |
| <a name="input_zone_id"></a> [zone\_id](#input\_zone\_id) | レコード登録先のRoute53ゾーンのID | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cloudfront_portfolio"></a> [cloudfront\_portfolio](#output\_cloudfront\_portfolio) | n/a |
| <a name="output_s3_portfolio"></a> [s3\_portfolio](#output\_s3\_portfolio) | n/a |
