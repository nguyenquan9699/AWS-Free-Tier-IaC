terraform {
  cloud {
    organization = "9PM"
    workspaces {
      name = "AWS-Free-Tier-Terraform"
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"
  alias = "singapore"
  access_key = var.AWS_ACCESS_KEY
  secret_key = var.AWS_ACCESS_KEY_SECRET
}
