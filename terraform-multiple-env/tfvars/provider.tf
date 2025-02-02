terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
  }


  backend "s3" {
    # bucket         = "example-bucket"
    # key            = "path/to/state"
    # region         = "us-east-1"
    # dynamodb_table = "example-table"
  }
}


provider "aws" {
  # Configuration options
  region = "us-east-1"
}