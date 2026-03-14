
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
  backend "s3" {
    bucket = "kalyan-remote-state"
    key    = "sg-test"
    region = "us-east-1"
    dynamodb_table = "kalyaneswar-locking"
  }
}

# provider "aws" {
#   region = "us-east-1"
# }

