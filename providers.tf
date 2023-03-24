terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.52.0"
    }
  }
  required_version = ">= 1.4.2"

  cloud {
    organization = "JohnRossHarrison"

    workspaces {
      name = "training-workspace"
    }
  }
}

provider "aws" {
  region = "us-west-2"
  alias = "west"
}