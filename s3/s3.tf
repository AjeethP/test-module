resource "aws_s3_bucket" "source_s3_bucket" {
  count = var.bucket_name != "" ? 1 : 0
  bucket = var.bucket_name
}

resource "aws_s3_bucket_acl" "s3_app_bucket_acl" {
  count = var.s3_bucket_acl != "" ? 1 : 0
  bucket = aws_s3_bucket.source_s3_bucket[0].bucket
  acl    = var.s3_bucket_acl
}

resource "aws_s3_bucket_versioning" "s3_app_bucket_versioning" {
  count = var.source_s3_versioning != "" ? 1 : 0
  bucket = aws_s3_bucket.source_s3_bucket[0].bucket
  versioning_configuration {
    status = var.source_s3_versioning
  }
}
