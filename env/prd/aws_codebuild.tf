# aws_codebuild.tf

module "cd" {
  source = "../../module/codebuild_cd"
  providers = {
    github = github
  }
  env             = local.env
  compute_type    = "BUILD_GENERAL1_SMALL"
  repository_name = "micryo-net-blog"
  repository_url  = "https://github.com/RomTin/micryo-net-blog.git"
  buildspec_path  = "buildspec.prd.yml"
  role_arn        = data.aws_iam_role.cd_role.arn
  environment_variables = [
    {
      type  = "PLAINTEXT"
      name  = "DISTRIBUTION_ID"
      value = module.portfolio.cloudfront_portfolio.id
    },
    {
      type  = "PLAINTEXT"
      name  = "BUCKET_NAME"
      value = module.portfolio.s3_portfolio.bucket
    }
  ]
  webhook_filter_group = [
    { type = "EVENT", pattern = "PUSH", exclude_matched_pattern = false },
    { type = "HEAD_REF", pattern = "refs/heads/main", exclude_matched_pattern = false }
  ]
  github_pat = var.GITHUB_TOKEN
}
