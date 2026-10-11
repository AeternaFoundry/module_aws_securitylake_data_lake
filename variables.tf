variable "securitylake_data_lakes" {
  description = <<EOT
Map of securitylake_data_lakes, attributes below
Required:
    - meta_store_manager_role_arn
Optional:
    - region
    - tags
    - configuration (block):
        - encryption_configuration (optional, block):
            - kms_key_id (optional)
        - lifecycle_configuration (optional, block):
            - expiration (optional, block):
                - days (optional)
            - transition (optional, block):
                - days (optional)
                - storage_class (optional)
        - region (required)
        - replication_configuration (optional, block):
            - regions (optional)
            - role_arn (optional)
EOT

  type = map(object({
    meta_store_manager_role_arn = string
    region                      = optional(string)
    tags                        = optional(map(string))
    configuration = optional(list(object({
      encryption_configuration = optional(list(object({
        kms_key_id = optional(string)
      })))
      lifecycle_configuration = optional(list(object({
        expiration = optional(list(object({
          days = optional(number)
        })))
        transition = optional(list(object({
          days          = optional(number)
          storage_class = optional(string)
        })))
      })))
      region = string
      replication_configuration = optional(list(object({
        regions  = optional(set(string))
        role_arn = optional(string)
      })))
    })))
  }))
}

