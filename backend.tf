terraform {
  required_version = ">= 1.0.0"
  backend "s3" {
    bucket         = "state-aravinth"
    key            = "terraform/gitsg/state/terraform.tfstate"
    region         = "ap-southeast-2"
  }
}