variable "bucket_name" {
  description = "Source s3 bucket creation"
  default = ""
}

variable "data_bucket_name" {
  description = "Get the source bucket which was created from the module or get the already existing bucket"
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

variable "destination_s3_bucket" {
  description = "Destination s3 bucket craetion"
  default = ""
}

variable "data_destination_s3_bucket" {
  description = "Get the destination bucket which was created from the module or get the already existing bucket"
  default = ""
}

variable "destination_s3_versioning" {
  description = "Enable versioning for the destination s3 bucket"
  default = ""
}

variable "destination_s3_acl" {
  description = "Adding the access control list for destination S3 bucket"
  default = ""
}

variable "source_accountid" {
  description = "The source account id where the replication has to be done"
  default = ""
}

variable "replication_aws_region" {
  description = "The destination region where the replication has to be done"
  default = ""
}

variable "environment" {
  description = "The name of the envionment"
  default = ""
}

variable "application_id" {
  description = "Application Id"
  default = ""
}

variable "crossaccount_role_arn" {
  description = "cross account access role"
  default = ""
}

variable "destination_bucket_policy" {
  description = "Destination bucket policy"
  default = ""
}

variable "replication_rule_name" {
  description = "The unique name for the replication rule"
  default = ""
}

variable "rule_status" {
  description = "The rule is ignored if status is not Enabled"
  default = ""
}

variable "delete_marker_replication_status" {
  description = "Whether delete markers should be replicated"
  default = ""
}

