terraform {
  backend "s3" {
    bucket = "your-terraform-state-bucket"
    key    = "dev/gym-crm-terraform.tfstate"
    region = "us-east-1"
  }
}