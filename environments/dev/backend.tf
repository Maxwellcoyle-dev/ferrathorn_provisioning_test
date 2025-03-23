  terraform {
    backend "s3" {
      bucket = "terraform-state-bucket-gym-crm"
      key    = "dev/gym-crm/terraform.tfstate"
      region = "us-east-1"
    }
  }