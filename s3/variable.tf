variable "bucket_name" {
  description = "Source s3 bucket creation"
  default = ""
}

variable "s3_bucket_acl" {
  description = "Adding the access control list for S3 bucket"
  default = ""
}

variable "source_s3_versioning" {
  description = "Enable versioning for the source s3 bucket"
  default = ""
}