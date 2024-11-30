terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.76.0"
    }
  }

  backend "s3"{
    bucket="ganesh-remote-state"
    key="provision"
    region="us-east-1"
    dynamodb_table="81s-locking"
  }
}

provider "aws" {
  # Configuration options
  region="us-east-1"
}