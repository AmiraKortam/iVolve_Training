terraform {
  backend "s3" {
    bucket         = "amira-bucket-2025"
    key            = "terraform/statefile.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}