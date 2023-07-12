terraform {

  backend "s3" {
    bucket            = "vivi-terra-bucket"
    key               = "jenkins/jenkins.tfstate"
    region            = "us-east-1"
    dynamodb_endpoint = "terraform-lock"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.7.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "default"

}