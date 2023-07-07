terraform {
  backend "s3" {
    encrypt        = true
    bucket         = "sumup-data-solutions-security-terraform-state"
    key            = "snowflake-resources/domain_name/terraform.tfstate" # CHANGE domain_name!!!!!!!!!!!!!!
    region         = "eu-west-1"
    dynamodb_table = "terraform-locks"
  }
}
