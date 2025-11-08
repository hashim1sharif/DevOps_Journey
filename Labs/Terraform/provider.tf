terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.17.0"
    }
  }
   backend "s3" {
     bucket = "terraform--remote"
     key    = "terraform.tfstate"
     region = "eu-west-1"
   }
}

provider "aws" {
  region = "eu-west-1"
}