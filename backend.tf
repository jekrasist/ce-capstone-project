terraform {
  backend "s3" {
    bucket         = "jekrasist-capstone-terraform-state" # Change this if you used a different bucket name
    key            = "state/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-lock"
    encrypt        = true
  }
}