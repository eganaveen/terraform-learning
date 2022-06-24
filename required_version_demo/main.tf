terraform {
  required_providers {
    dev = {
      source = "hasicorp/aws"
      version = "~> 1.0"
    }
    prod = {
      source = "hasicorp/aws"
      version = "2.0"
    }
  }
  required_version = ">= 1.0.5"
}