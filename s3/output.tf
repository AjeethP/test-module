output "s3_app_bucket_name" {
  value = aws_s3_bucket.source_s3_bucket.bucket
}

output "s3_app_bucket_arn" {
  value = aws_s3_bucket.source_s3_bucket.arn
}

output "s3_app_bucket_id" {
  value = aws_s3_bucket.source_s3_bucket.id
}