output "securitylake_data_lakes_id" {
  description = "Map of id values across all securitylake_data_lakes, keyed the same as var.securitylake_data_lakes"
  value       = { for k, v in aws_securitylake_data_lake.securitylake_data_lakes : k => v.id if v.id != null && length(v.id) > 0 }
}
output "securitylake_data_lakes_arn" {
  description = "Map of arn values across all securitylake_data_lakes, keyed the same as var.securitylake_data_lakes"
  value       = { for k, v in aws_securitylake_data_lake.securitylake_data_lakes : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "securitylake_data_lakes_configuration" {
  description = "Map of configuration values across all securitylake_data_lakes, keyed the same as var.securitylake_data_lakes"
  value       = { for k, v in aws_securitylake_data_lake.securitylake_data_lakes : k => v.configuration if v.configuration != null && length(v.configuration) > 0 }
}
output "securitylake_data_lakes_meta_store_manager_role_arn" {
  description = "Map of meta_store_manager_role_arn values across all securitylake_data_lakes, keyed the same as var.securitylake_data_lakes"
  value       = { for k, v in aws_securitylake_data_lake.securitylake_data_lakes : k => v.meta_store_manager_role_arn if v.meta_store_manager_role_arn != null && length(v.meta_store_manager_role_arn) > 0 }
}
output "securitylake_data_lakes_region" {
  description = "Map of region values across all securitylake_data_lakes, keyed the same as var.securitylake_data_lakes"
  value       = { for k, v in aws_securitylake_data_lake.securitylake_data_lakes : k => v.region if v.region != null && length(v.region) > 0 }
}
output "securitylake_data_lakes_s3_bucket_arn" {
  description = "Map of s3_bucket_arn values across all securitylake_data_lakes, keyed the same as var.securitylake_data_lakes"
  value       = { for k, v in aws_securitylake_data_lake.securitylake_data_lakes : k => v.s3_bucket_arn if v.s3_bucket_arn != null && length(v.s3_bucket_arn) > 0 }
}
output "securitylake_data_lakes_tags" {
  description = "Map of tags values across all securitylake_data_lakes, keyed the same as var.securitylake_data_lakes"
  value       = { for k, v in aws_securitylake_data_lake.securitylake_data_lakes : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "securitylake_data_lakes_tags_all" {
  description = "Map of tags_all values across all securitylake_data_lakes, keyed the same as var.securitylake_data_lakes"
  value       = { for k, v in aws_securitylake_data_lake.securitylake_data_lakes : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

