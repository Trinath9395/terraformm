terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.11.0"
    }
  }

  backend s3 {
  bucket = "82-state-remote-pr"
  key = "expense-backend-dev"
  region = "us-east-1"
  use_lockfile = true
  #dynamodb_table = "82-state-locking"
 }

}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}

