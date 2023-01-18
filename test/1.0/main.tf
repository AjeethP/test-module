resource "aws_s3_bucket" "bucket" {
  count = var.bucket_name != "" && var.application_id != "" && var.environment != "" ? 1 : var.environment != "" && var.purpose !="" && var.application_id != "" ? 1 : 0
  bucket = var.bucket_name == "" ? lower(join("-" , [ upper(var.environment)=="DRE" ? "azo" : "azv" , "s3${var.purpose}" , join("",["${upper(var.environment)=="DRE" || upper(var.environment)=="DBG" ? substr(var.environment,1,1) : substr(var.environment,0,1) }","${var.application_id}"]) ])) : var.bucket_name
#   force_destroy = var.force_destroy
#   object_lock_enabled = var.object_lock_enabled
  tags = {
    "Application ID" = var.application_id,
    "Environment" = var.environment
  }
}

variable "bucket_name" {
  default = ""
}

variable "application_id" {
  default = "POC1"
}

variable "environment" {
  default = "dev"
}

variable "purpose" {
  default = "str"
}

output "bucket_name" {
  value = aws_s3_bucket.bucket
}