# tagv1.0

***S3 bucket creation***

```
module "s3" {
   source = "git@github.com:AjeethP/test-module.git//s3?ref=v1.0"
   bucket_name = "" # Name of the s3 bucket
 }
```

***S3 bucket creation***
***S3 bucket versioning***

```
module "s3" {
   source = "git@github.com:AjeethP/test-module.git//s3?ref=v1.0"
   bucket_name = "" # Name of the s3 bucket
   source_s3_versioning = "" # Enabled or Disabled
 }
```

***S3 bucket creation***
***S3 bucket acl***

```
module "s3" {
   source = "git@github.com:AjeethP/test-module.git//s3?ref=v1.0"
   bucket_name = "" # Name of the s3 bucket
   s3_bucket_acl = "" # private or public
 }
```