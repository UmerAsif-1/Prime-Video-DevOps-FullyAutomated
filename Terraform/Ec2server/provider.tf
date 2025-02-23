terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.67.0"
    }
  }
}

provider "aws"{
    region = "var.region.name"
    access_key = "var.aws_access_key"
}
