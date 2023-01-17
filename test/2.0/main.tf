resource "aws_iam_role" "role" {
  count = var.role_creation ? length(var.role_name) : 0
  name = var.role_name[count.index].name == "" && var.role_name[count.index].eks_role == false ? upper(join("-" , [ "IAM", join("",[var.role_name[count.index].purpose, var.role_name[count.index].element_type]) , join("",["${upper(var.role_name[count.index].env)=="DRE" || upper(var.role_name[count.index].env)=="DBG" ? substr(var.role_name[count.index].env,1,1) : substr(var.role_name[count.index].env,0,1) }","${var.role_name[count.index].app_id}"]) ])) : var.role_name[count.index].name == "" && var.role_name[count.index].eks_role ? upper(join("-" , [ "EKS" , "IAM", join("",[var.role_name[count.index].purpose, var.role_name[count.index].element_type]) , join("",["${upper(var.role_name[count.index].env)=="DRE" || upper(var.role_name[count.index].env)=="DBG" ? substr(var.role_name[count.index].env,1,1) : substr(var.role_name[count.index].env,0,1) }","${var.role_name[count.index].app_id}"]) ])) : var.role_name[count.index].name
  description = try(var.role_name[count.index].description,"")
  force_detach_policies = var.role_name[count.index].force_detach_policies
  assume_role_policy = jsonencode(var.role_name[count.index].assume_role_policy)
  managed_policy_arns = var.role_name[count.index].managed_policy_arns
  max_session_duration = var.role_name[count.index].max_session_duration
  permissions_boundary = var.role_name[count.index].permissions_boundary
  tags = merge({
    "Application ID" = var.role_name[count.index].app_id,
    "Environment" = var.role_name[count.index].env
  },var.role_name[count.index].tags)
}

variable "role_name" {
  default = []
}

variable "role_creation" {
  default = false
}