terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.52.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.4.3"
    }
  }
}

provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      Project   = "terraform-static-website"
      ManageBy  = "terraform"
      CreatedAt = "February 2023"
    }
  }
}

data "aws_caller_identity" "current" {

}

resource "random_pet" "bucket_name" {
  prefix = data.aws_caller_identity.current.account_id
  length = 4
}

