##*****************************************
##Creating S3 dr bucket in us-west-2
##******************************************
resource "aws_s3_bucket" "dr_bucket" {
  count = var.destination_s3_bucket != "" ? 1 : 0
  provider = aws.replication
  bucket   = var.destination_s3_bucket
}

data "aws_s3_bucket" "existing_dr_bucket" {
  count = var.data_destination_s3_bucket != "" ? 1 : 0
  provider = aws.replication
  bucket = var.data_destination_s3_bucket
  depends_on = [
    aws_s3_bucket.dr_bucket
  ]
}

##*********************************************
##Creating S3 dr bucket versioning in us-west-2
##*********************************************
resource "aws_s3_bucket_versioning" "dr_bucket_versioning" {
  count = var.destination_s3_versioning != "" ? 1 : 0
  provider = aws.replication
  bucket = data.aws_s3_bucket.existing_dr_bucket[0].id
  versioning_configuration {
    status = var.destination_s3_versioning
  }
}

##*********************************************
##Creating S3 dr bucket acl in us-west-2
##*********************************************
resource "aws_s3_bucket_acl" "dr_bucket_acl" {
  count = var.destination_s3_versioning != "" ? 1 : 0
  provider = aws.replication
  bucket = data.aws_s3_bucket.existing_dr_bucket[0].id
  acl    = var.destination_s3_acl
}


##*********************************************
##Creating S3 dr bucket policy in us-west-2
##*********************************************
resource "aws_s3_bucket_policy" "dr_bucket_policy" {
  count = var.destination_bucket_policy != "" ? 1 : 0
  provider = aws.replication
  bucket = data.aws_s3_bucket.existing_dr_bucket[0].id
  policy = var.destination_bucket_policy
}