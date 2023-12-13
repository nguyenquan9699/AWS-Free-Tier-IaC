terraform {
  cloud {
    organization = "9PM"

    workspaces {
      name = "AWS-Free-Tier-Terraform"
    }
  }
}