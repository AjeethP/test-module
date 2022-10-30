resource "aws_iam_role" "replication_role" {
  count = var.data_bucket_name != "" && var.data_destination_s3_bucket != "" ? 1 : 0
  name      = join("-", ["EKS", "IAM", "S3RRL",upper(join("", [(var.environment == "dre" ? substr(var.environment, 1 , 1) : substr(var.environment, 0, 1)), var.application_id]))]) # EKS-IAM-FLURL-PAES

  assume_role_policy = var.assume_role_policy

}

resource "aws_iam_policy" "replication_policy" {
  count = var.data_bucket_name != "" && var.data_destination_s3_bucket != "" ? 1 : 0
  name      = join("-", ["EKS", "IAM", "S3RRP",upper(join("", [(var.environment == "dre" ? substr(var.environment, 1 , 1) : substr(var.environment, 0, 1)), var.application_id]))]) # EKS-IAM-S3RRL-PAES

  policy = var.replication_policy
}

resource "aws_iam_role_policy_attachment" "replication_role_policy_attachment" {
  count = var.data_bucket_name != "" && var.data_destination_s3_bucket != "" ? 1 : 0
  role       = aws_iam_role.replication_role[0].name
  policy_arn = aws_iam_policy.replication_policy[0].arn
}