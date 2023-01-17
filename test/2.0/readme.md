
# role creation

```ruby
module "${user_defined_name}" {
    source = "git::https://github.com/AjeethP/test-module.git//test/2.0?ref=v4.0"

    role_creation = true
    role_name = [{},{}] # pass multiple objects whatever you needed either it could be custom or standard or eks standard
}
```

## object for custom role creation

```ruby

 role_name = {
      name = , (Required)
      assume_role_policy =  , (Required) 
      app_id = , (Required)
      env = , (Required)
      eks_role = ,(Required) # set to false
      tags = {},
      description = "",
      force_detach_policies = false,
      managed_policy_arns = null,
      max_session_duration = 3600,
      permissions_boundary = null
    }
```

## object for Standard role creation

```ruby

 role_name = {
      name = "", "Do not touch"
      assume_role_policy = {} , (Required) 
      app_id = "" , (Required)
      env = "" , (Required) 
      purpose = "", (Required)
      element_type = "", (Required)
      eks_role = ,(Required) # set to false
      tags = {},
      description = "",
      force_detach_policies = false,
      managed_policy_arns = null,
      max_session_duration = 3600,
      permissions_boundary = null
    }
```
## object for EKS Standard role creation

```ruby

 role_name = {
      name = "", "Do not touch"
      assume_role_policy = {} , (Required) 
      app_id = "" , (Required)
      env = "", (Required) 
      purpose = "" , (Required)
      element_type = "", (Required)
      eks_role = , (Required) # set to true
      tags = {},
      description = "",
      force_detach_policies = false,
      managed_policy_arns = null,
      max_session_duration = 3600,
      permissions_boundary = null
    }
```
