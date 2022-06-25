terraform {
  backend "s3" {
    bucket = "terraform-ega"
    key = "1stBucket/terraform.tfstate"
    region = "us-east-1"
  }
}