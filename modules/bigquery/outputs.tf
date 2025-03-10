
output "bigquery_dataset" {
  value       = google_bigquery_dataset.main
  description = "Bigquery dataset resource."
}

output "bigquery_tables" {
  value       = google_bigquery_table.main
  description = "Map of bigquery table resources being provisioned."
}

output "bigquery_views" {
  value       = google_bigquery_table.view
  description = "Map of bigquery view resources being provisioned."
}

output "bigquery_external_tables" {
  value       = google_bigquery_table.external_table
  description = "Map of BigQuery external table resources being provisioned."
}

output "project" {
  value       = "starlit-gift-343013"
  description = "Project where the dataset and tables are created"
}

output "table_ids" {
  value = [
    for table in google_bigquery_table.main :
    table.table_id
  ]
  description = "Unique id for the table being provisioned"
}

output "table_names" {
  value = [
    for table in google_bigquery_table.main :
    table.friendly_name
  ]
  description = "Friendly name for the table being provisioned"
}

output "view_ids" {
  value = [
    for view in google_bigquery_table.view :
    view.table_id
  ]
  description = "Unique id for the view being provisioned"
}

output "view_names" {
  value = [
    for view in google_bigquery_table.view :
    view.friendly_name
  ]
  description = "friendlyname for the view being provisioned"
}

output "external_table_ids" {
  value = [
    for external_table in google_bigquery_table.external_table :
    external_table.table_id
  ]
  description = "Unique IDs for any external tables being provisioned"
}

output "external_table_names" {
  value = [
    for table in google_bigquery_table.external_table :
    table.friendly_name
  ]
  description = "Friendly names for any external tables being provisioned"
}

output "routine_ids" {
  value = [
    for routine in google_bigquery_routine.routine :
    routine.routine_id
  ]
  description = "Unique IDs for any routine being provisioned"
}
