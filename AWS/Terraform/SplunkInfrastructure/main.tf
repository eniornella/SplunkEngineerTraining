terraform {
  backend "s3" {
    bucket = "terraformoutputs1"
    key    = "terraform.tfstate"
    region = "us-east-2"
  }
}