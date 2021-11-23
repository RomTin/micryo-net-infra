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
| [aws_cloudfront_distribution.portfolio](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_distribution) | resource |
| [aws_cloudfront_origin_access_identity.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_origin_access_identity) | resource |
| [aws_route53_record.portfolio](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_s3_bucket.portfolio](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_public_access_block.portfolio](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_env"></a> [env](#input\_env) | 環境識別子 | `string` | n/a | yes |
| <a name="input_log_bucket_domain_name"></a> [log\_bucket\_domain\_name](#input\_log\_bucket\_domain\_name) | CloudFrontのログ保管先S3バケットのドメイン名 | `string` | n/a | yes |
| <a name="input_portfolio_domain"></a> [portfolio\_domain](#input\_portfolio\_domain) | 環境で使用するドメイン | `string` | n/a | yes |
| <a name="input_ttl"></a> [ttl](#input\_ttl) | Route53レコードのTTL | `number` | n/a | yes |
| <a name="input_zone_id"></a> [zone\_id](#input\_zone\_id) | レコード登録先のRoute53ゾーンのID | `string` | n/a | yes |

## Outputs

No outputs.
