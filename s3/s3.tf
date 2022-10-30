resource "aws_s3_bucket" "source_s3_bucket" {
  count = var.bucket_name != "" ? 1 : 0
  bucket = var.bucket_name
}

data "aws_s3_bucket" "s3_app_bucket" {
  count = var.data_bucket_name != "" ? 1 : 0
  bucket = var.data_bucket_name
  depends_on = [
    aws_s3_bucket.source_s3_bucket
  ]
}

resource "aws_s3_bucket_acl" "s3_app_bucket_acl" {
  count = var.s3_bucket_acl != "" ? 1 : 0
  bucket = data.aws_s3_bucket.s3_app_bucket[0].bucket
  acl    = var.s3_bucket_acl
}

resource "aws_s3_bucket_versioning" "s3_app_bucket_versioning" {
  count = var.source_s3_versioning != "" ? 1 : 0
  bucket = data.aws_s3_bucket.s3_app_bucket[0].id
  versioning_configuration {
    status = var.source_s3_versioning
  }
}

resource "aws_s3_bucket_replication_configuration" "replication" {
  count = var.data_bucket_name != "" && var.data_destination_s3_bucket != "" ? 1 : 0
  role   = aws_iam_role.replication_role[0].arn
  bucket = data.aws_s3_bucket.s3_app_bucket[0].id

  rule {
    id = var.replication_rule_name
    status = var.rule_status
    delete_marker_replication {
     status = var.delete_marker_replication_status
    }

    destination {
      bucket        = data.aws_s3_bucket.existing_dr_bucket[0].arn
      storage_class = "STANDARD"
    }
  }
  depends_on = [
    aws_s3_bucket_versioning.dr_bucket_versioning
  ]
}