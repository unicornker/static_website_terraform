terraform {
  required_version = "~> 0.12"

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  backend "s3" {
    bucket = "oris-terraform"
    key = "prod/terraform.tfstate"
    region = "eu-west-1"
  }
}
provider "aws" {
  access_key = var.AWS_ACCESS_KEY
  secret_key = var.AWS_SECRET_KEY
  region = var.region
}

provider "aws" {
  alias = "acm_provider"
  region = "us-west-1"
}
