terraform {
  backend "s3" {
    bucket = "devops2025-tfstate-bucket"
    key    = "codepipeline/terraform.tfstate"
    region = "us-east-1"
  }
}
