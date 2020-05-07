terraform {
  required_version = "= 0.12.18"

  backend "s3" {
    bucket         = "test-jupiter-apnortheast2-tfstate"
    key            = "jupiter/terraform/vpc/jyd_apnortheast2/terraform.tfstate"
    region         = "ap-northeast-2"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}

