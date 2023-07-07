module "database" {
  source      = "git@github.com:sumup/terraform-data-platform-snowflake-resources-modules.git//database?ref=0.1.13"
  environment = "DEV"
  name        = "DATABASE_NAME"
  domain_name  = var.domain_name

  schemas = {
    "DOMAIN_NAME_STAGING" = {
      owner_roles = [
        "OWNER_ROLE"
      ],
      modify_roles = [
        "WRITER_ROLE_01",
        "WRITER_ROLE_02"
      ]
      usage_roles = [
        "READER_ROLE_01",
        "READER_ROLE_02"
      ]
    },
    "DOMAIN_NAME_CURATED" = {
      owner_roles = [
        "OWNER_ROLE"
      ],
      modify_roles = [
        "WRITER_ROLE_01",
        "WRITER_ROLE_02"
      ]
      usage_roles = [
        "READER_ROLE_01",
        "READER_ROLE_02"
      ]
    },
    "DOMAIN_NAME_MART" = {
      owner_roles = [
        "OWNER_ROLE"
      ],
      modify_roles = [
        "WRITER_ROLE_01",
        "WRITER_ROLE_02"
      ]
      usage_roles = [
        "READER_ROLE_01",
        "READER_ROLE_02"
      ]
    }
  }
}
