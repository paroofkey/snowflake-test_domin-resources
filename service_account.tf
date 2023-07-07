module "service_account" {
  source = "git@github.com:sumup/terraform-data-platform-snowflake-resources-modules.git//service_account?ref=0.1.13"

  users = {
    "DBT_MACHINE_USER" : {
      warehouse      = "DOMAIN_NAME_TRANSFORMATION_WH"
      environment    = "DEV"
      role           = "DBT_ROLE"
      rsa_public_key = "super_complexe_string"
    },
    "TABLEAU_MACHINE_USER" : {
      warehouse      = "DOMAIN_NAME_INGESTION_WH"
      environment    = "DEV"
      role           = "TABLEAU_ROLE"
      rsa_public_key = "super_complexe_string"
    }
  }

}
