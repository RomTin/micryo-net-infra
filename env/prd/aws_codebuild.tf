# aws_codebuild.tf

module "cd" {
  source = "../../module/codebuild_cd"
  providers = {
    github = github
  }
  env                   = local.env
  compute_type          = "BUILD_GENERAL1_SMALL"
  repository_name       = "micryo-net-blog"
  repository_url        = "https://github.com/RomTin/micryo-net-blog"
  buildspec_path        = "buildspec.prd.yml"
  role_arn              = data.aws_iam_role.cd_role.arn
  environment_variables = []
  webhook_filter_group = [
    { type = "EVENT", pattern = "PUSH", exclude_matched_pattern = false },
    { type = "HEAD_REF", pattern = "refs/heads/main", exclude_matched_pattern = false }
  ]
}