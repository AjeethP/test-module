provider "aws" {
  alias = "replication"
  region = var.target_region
}