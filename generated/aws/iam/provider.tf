provider "aws" {}

terraform {
	required_providers {
		aws = {
	    version = "~> 3.75.2"
		}
  }
}
