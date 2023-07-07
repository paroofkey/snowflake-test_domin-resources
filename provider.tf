terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "0.64.0"
    }
  }
}

provider "snowflake" {
  account           = var.SNOWFLAKE_ACCOUNT
  username          = var.SNOWFLAKE_USERNAME
  private_key_path  = var.SNOWFLAKE_PRIVATE_KEY_PATH
  role              = var.SNOWFLAKE_ROLE
}