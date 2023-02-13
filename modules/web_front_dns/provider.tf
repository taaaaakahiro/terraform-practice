
terraform {
  required_version = ">= 1.2.1"
  required_providers {
    aws = {
      source                = "hashicorp/aws"
      version               = ">= 4.29.0"
      configuration_aliases = [aws.us-east-1]
    }
  }
}

provider "aws" {
  alias  = "us-east-1"
  region = "us-east-1"
  default_tags {
    tags = {
      Environment = var.env
      Service     = var.service
    }
  }
}