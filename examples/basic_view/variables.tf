variable "delete_contents_on_destroy" {
  description = "(Optional) If set to true, delete all the tables in the dataset when destroying the resource; otherwise, destroying the resource will fail if tables are present."
  type        = bool
  default     = null
}

variable "default_table_expiration_ms" {
  description = "Default TTL of tables using the dataset in MS."
  default     = null
}

variable "table_project_id" {
  description = "Project where the dataset and table are created."
}

variable "table_dataset_labels" {
  description = "A mapping of labels to assign to the table."
  type        = map(string)
}

variable "tables" {
  description = "A list of maps that includes table_id, schema, clustering, time_partitioning, range_partitioning, view, expiration_time, labels in each element."
  default     = []
  type = list(object({
    table_id   = string,
    schema     = string,
    clustering = list(string),
    time_partitioning = object({
      expiration_ms            = string,
      field                    = string,
      type                     = string,
      require_partition_filter = bool,
    }),
    range_partitioning = object({
      field = string,
      range = object({
        start    = string,
        end      = string,
        interval = string,
      }),
    }),
    expiration_time = string,
    labels          = map(string),
  }))
}


### Views ###

variable "view_project_id" {
  description = "Project where the dataset and table are created."
}

variable "view_dataset_labels" {
  description = "A mapping of labels to assign to the table."
  type        = map(string)
}

variable "views" {
  description = "A list of objects which include table_id, which is view id, and view query"
  default     = []
  type = list(object({
    view_id        = string,
    query          = string,
    use_legacy_sql = bool,
    labels         = map(string),
  }))
}
