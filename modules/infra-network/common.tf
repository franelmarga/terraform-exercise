terraform {
  required_version = "~> 1.4"

  required_providers {
    aws = {
      version = "~> 5.0"

    }
  }
}

provider "aws" {
  region = var.region
}

locals {
  tags = merge(var.repo_tags, var.env_tags)
  env_mapping = {
    "dev" : "development"
    "prod" : "production"
  }
  env_long = local.env_mapping[var.env]
}
