terraform {

  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.5.1"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "5.22.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_ACCESS_KEY
}

provider "random" {
  # Configuration options
}

resource "random_string" "bucket_name" {
  length  = 16
  special = false
  lower   = true
  upper   = false
}

resource "aws_s3_bucket" "example" {
  bucket = random_string.bucket_name.result

}

output "random_bucket_name" {
  value = random_string.bucket_name.result
}
