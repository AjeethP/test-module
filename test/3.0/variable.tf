variable "role_name" {
  description = "The name of the role"
  default = ""
}

variable "role_description" {
  description = "The description of the role"
  default = ""
}

variable "role_force_detach_policies" {
  description = "Whether to force detaching any policies the role has before destroying it"
  default = false
}

variable "assume_role_policy" {
  description = "The assume role policy of the role"
  default = ""
}

variable "role_managed_policy_arns" {
  description = "Set of exclusive IAM managed policy ARNs to attach to the IAM role"
  default = null
}

variable "role_max_session_duration" {
  description = "Maximum session duration (in seconds) that you want to set for the specified role"
  default = 3600
}

variable "role_permissions_boundary" {
  description = "ARN of the policy that is used to set the permissions boundary for the role."
  default = null
}

variable "role_tags" {
  description = "The tags for the role"
  default = {}
}

variable "policy_name" {
  description = "The name of the policy"
  default = ""
}

variable "policy_path" {
  description = "Path in which to create the policy"
  default = "/"
}

variable "policy_description" {
  description = "The description for the policy"
  default = ""
}

variable "policy" {
  description = "The json code for the policy"
  default = ""
}

variable "policy_tags" {
  description = "The tags for the policy"
  default = {}
}

variable "role_policy_name" {
  description = "The name for the role policy"
  default = ""
}

variable "role_policy" {
  description = "The json code for the role policy"
  default = ""
}

variable "role_policy_attachment" {
  description = "The creation of the role policy attachment"
  default = false
}

variable "instance_profile_role" {
  description = "The creation of the role policy attachment"
  default = ""
}

variable "instance_profile_name" {
  description = "The name of the instance profile"
  default = ""
}

variable "instance_profile_path" {
  description = "The path for the instance profile"
  default = "/"
}

variable "instance_profile_tags" {
  description = "The tags for the instance profile"
  default = {}
}

variable "instance_profile_creation" {
  description = "Whether the instance profile creation is needed"
  default = false
}

variable "role_attachment_name" {
  description = "The name of the role that need to attached"
  default = ""
}

variable "policy_attachment_arn" {
  description = "The arn of the policy that need to attached"
  default = ""
}

variable "role_id" {
  description = "The role id to create iam role policy"
  default = ""
}

variable "application_id" {
  default = ""
}

variable "environment" {
  default = ""
}

variable "role_purpose" {
  default = ""
}

variable "policy_purpose" {
  default = ""
}

variable "role_policy_purpose" {
  default = ""
}

variable "instance_profile_purpose" {
  default = ""
}

variable "role_iam_element_type" {
  default = ""
}

variable "policy_iam_element_type" {
  default = ""
}

variable "role_policy_iam_element_type" {
  default = ""
}

variable "instance_profile_iam_element_type" {
  default = ""
}

variable "eks_role_creation" {
  default = false
}

variable "eks_policy_creation" {
  default = false
}

variable "eks_role_policy_creation" {
  default = false
}

variable "eks_instance_profile_creation" {
  default = false
}
#----------------------------------- Data Source ---------------------------

variable "data_role_name" {
  description = "The name of the role that you want to datasource"
  default = ""
}