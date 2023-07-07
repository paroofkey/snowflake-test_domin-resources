variable "SNOWFLAKE_ACCOUNT" {
  type        = string
  description = "The account for the snowflake power user"
  sensitive   = true
}

variable "SNOWFLAKE_USERNAME" {
  type        = string
  description = "The username for the snowflake power user"
  sensitive   = true
}

variable "SNOWFLAKE_PRIVATE_KEY_PATH" {
  type        = string
  description = "The path of the private rsa for the snowflake power user"
  sensitive   = true
}

variable "SNOWFLAKE_ROLE" {
  type        = string
  description = "The role for the snowflake power user"
  sensitive   = true
}

variable "domain_name" {
  type        = string
  description = "The name of your domain"
  default     = "DOMAIN_NAME" #update this value
  validation {
    condition     = var.domain_name != "DOMAIN_NAME" #do not update this value
    error_message = "Please change the variable DOMAIN_NAME to your actual domain name"
  }
}
