output "s3_app_bucket_name" {
  value = data.aws_s3_bucket.s3_app_bucket.bucket
}

output "s3_app_bucket_arn" {
  value = data.aws_s3_bucket.s3_app_bucket.arn
}

output "s3_app_bucket_id" {
  value = data.aws_s3_bucket.s3_app_bucket.id
}

output "replication_iam_role_arn" {
  value = aws_iam_role.replication_role.arn
}