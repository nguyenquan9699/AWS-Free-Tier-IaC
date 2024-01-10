terraform {
  cloud {
    organization = "9PM"
    workspaces {
      name = "AWS-Free-Tier-Terraform"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.4.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"
  default_tags {
    tags = {
      
    }
  }
}