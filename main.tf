resource "aws_securitylake_data_lake" "securitylake_data_lakes" {
  for_each = var.securitylake_data_lakes

  meta_store_manager_role_arn = each.value.meta_store_manager_role_arn
  region                      = each.value.region
  tags                        = each.value.tags

  dynamic "configuration" {
    for_each = each.value.configuration != null ? each.value.configuration : []
    content {
      dynamic "encryption_configuration" {
        for_each = configuration.value.encryption_configuration != null ? configuration.value.encryption_configuration : []
        content {
          kms_key_id = encryption_configuration.value.kms_key_id
        }
      }
      dynamic "lifecycle_configuration" {
        for_each = configuration.value.lifecycle_configuration != null ? configuration.value.lifecycle_configuration : []
        content {
          dynamic "expiration" {
            for_each = lifecycle_configuration.value.expiration != null ? lifecycle_configuration.value.expiration : []
            content {
              days = expiration.value.days
            }
          }
          dynamic "transition" {
            for_each = lifecycle_configuration.value.transition != null ? lifecycle_configuration.value.transition : []
            content {
              days          = transition.value.days
              storage_class = transition.value.storage_class
            }
          }
        }
      }
      region = configuration.value.region
      dynamic "replication_configuration" {
        for_each = configuration.value.replication_configuration != null ? configuration.value.replication_configuration : []
        content {
          regions  = replication_configuration.value.regions
          role_arn = replication_configuration.value.role_arn
        }
      }
    }
  }
}

