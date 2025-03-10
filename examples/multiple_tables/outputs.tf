output "bigquery_dataset" {
  value       = module.bigquery.bigquery_dataset
  description = "Bigquery dataset resource."
}

output "bigquery_tables" {
  value       = module.bigquery.bigquery_tables
  description = "Map of bigquery table resources being provisioned."
}

output "bigquery_external_tables" {
  value       = module.bigquery.bigquery_external_tables
  description = "Map of bigquery table resources being provisioned."
}
