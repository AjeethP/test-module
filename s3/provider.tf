provider "aws" {
  alias  = "replication"
  region = var.replication_aws_region

  assume_role {
    role_arn = var.crossaccount_role_arn
  }
}