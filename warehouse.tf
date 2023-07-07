module "TRANSFORMATION_WH" {
  source = "git@github.com:sumup/terraform-data-platform-snowflake-resources-modules.git//warehouse?ref=0.1.13"

  environment = "DEV"
  name        = "DOMAIN_NAME_TRANSFORMATION_WH"
  domain_name  = var.domain_name

  monitor_access = [
    "DOMAIN_NAME_TRANSFORMATION_ROLE"
  ]

  usage_access = [
    "DOMAIN_NAME_TRANSFORMATION_ROLE"
  ]
}

module "ANALYTICAL_WH" {
  source = "git@github.com:sumup/terraform-data-platform-snowflake-resources-modules.git//warehouse?ref=0.1.13"

  environment = "DEV"
  name        = "DOMAIN_NAME_INGESTION_WH"
  domain_name  = var.domain_name

  monitor_access = [
    "DOMAIN_NAME_ANALYTICAL_ROLE"
  ]

  usage_access = [
    "DOMAIN_NAME_ANALYTICAL_ROLE"
  ]
}
