# aws_athena.tf

resource "aws_athena_database" "logs" {
  name   = local.athena_id
  bucket = aws_s3_bucket.athena.id
}

resource "aws_athena_workgroup" "logs" {
  name = local.athena_id
  configuration {
    enforce_workgroup_configuration    = true
    publish_cloudwatch_metrics_enabled = true
    bytes_scanned_cutoff_per_query     = 10737418240 # 10GB
    result_configuration {
      output_location = "s3://${aws_s3_bucket.athena.id}/"
    }
  }
}
