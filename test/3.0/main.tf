resource "aws_iam_role" "role" {
  count = var.role_name != "" && var.application_id != "" && var.environment != "" ? 1 : var.environment != "" && var.role_purpose !="" && var.application_id != "" && var.role_iam_element_type != "" ? 1 : 0
  name = var.role_name == "" && var.eks_role_creation == false ? upper(join("-" , [ "IAM", join("",[var.role_purpose, var.role_iam_element_type]) , join("",["${upper(var.environment)=="DRE" || upper(var.environment)=="DBG" ? substr(var.environment,1,1) : substr(var.environment,0,1) }","${var.application_id}"]) ])) : var.role_name == "" && var.eks_role_creation ? upper(join("-" , [ "EKS" , "IAM", join("",[var.role_purpose, var.role_iam_element_type]) , join("",["${upper(var.environment)=="DRE" || upper(var.environment)=="DBG" ? substr(var.environment,1,1) : substr(var.environment,0,1) }","${var.application_id}"]) ])) : var.role_name
  description = var.role_description
  force_detach_policies = var.role_force_detach_policies
  assume_role_policy = jsonencode(var.assume_role_policy)
  managed_policy_arns = var.role_managed_policy_arns
  max_session_duration = var.role_max_session_duration
  permissions_boundary = var.role_permissions_boundary
  tags = merge({
    "Application ID" = var.application_id,
    "Environment" = var.environment
  },var.role_tags)
}