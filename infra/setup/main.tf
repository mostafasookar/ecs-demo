terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.23.0"
    }
  }

  backend "s3" {
    bucket         = "devops-ecs-adcb"
    key            = "tf-state-setup"
    region         = "me-central-1"
    encrypt        = true
    dynamodb_table = "devops-ecs-adcb-tf-lock"
  }
}

provider "aws" {
  region = "me-central-1"

  default_tags {
    tags = {
      Environment = terraform.workspace
      Project     = var.project
      Contact     = var.contact
      ManageBy    = "Terraform/setup"
    }
  }
}
