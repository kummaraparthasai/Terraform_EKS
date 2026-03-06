terraform {
  backend "s3" {
    bucket         = "terraform-eks-state-partha"
    key            = "eks-cluster/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
  }
}