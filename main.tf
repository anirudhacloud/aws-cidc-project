terraform {
  backend "s3" {
    bucket = "anirudha-terraform-state-2026"
    key    = "aws-cicd/terraform.tfstate"
    region = "ap-south-1"
  }

  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "demo" {
  bucket = "anirudha-aws-cicd-demo-2026"
}