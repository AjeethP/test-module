# tagv5.0

***S3 bucket creation***

```
module "s3" {
   source = "git::git@github.com:aenetworks-gto/infra-ajeeth-test.git//s3?ref=v5.0"
   bucket_name = "" # Name of the s3 bucket
   data_bucket_name = "" # Name of the s3 bucket
 }
```

***S3 bucket creation***
***S3 bucket versioning***

```
module "s3" {
   source = "git::git@github.com:aenetworks-gto/infra-ajeeth-test.git//s3?ref=v5.0"
   bucket_name = "" # Name of the s3 bucket
   data_bucket_name = "" # Name of the s3 bucket
   source_s3_versioning = "" # Enabled or Disabled
 }
```

***S3 bucket creation***
***S3 bucket acl***

```
module "s3" {
   source = "git::git@github.com:aenetworks-gto/infra-ajeeth-test.git//s3?ref=v5.0"
   bucket_name = "" # Name of the s3 bucket
   data_bucket_name = "" # Name of the s3 bucket
   s3_bucket_acl = "" # private or public
 }
```

***S3 bucket creation***
***S3 bucket versioning***
***S3 bucket acl***

```
module "s3" {
   source = "git::git@github.com:aenetworks-gto/infra-ajeeth-test.git//s3?ref=v5.0"
   bucket_name = "" # Name of the s3 bucket
   data_bucket_name = "" # Name of the s3 bucket
   source_s3_versioning = "" # Enabled or Disabled
   s3_bucket_acl = "" # private or public
 }
```