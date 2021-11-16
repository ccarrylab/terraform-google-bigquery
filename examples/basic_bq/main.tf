

module "bigquery" {
  source                     = "git::https://github.com/ccarrylab/terraform-google-bigquery//modules/bigquery"
  dataset_id                 = "food2021"
  dataset_name               = "food2021"
  description                = "some description 2021"
  project_id                 = "level-storm-330413"
  location                   = "US"
  delete_contents_on_destroy = var.delete_contents_on_destroy
  tables = [
    {
      table_id           = "bar",
      schema             = file("sample_bq_schema.json"),
      time_partitioning  = null,
      range_partitioning = null,
      expiration_time    = 2524604400000, # 2050/01/01
      clustering         = [],
      labels = {
        env      = "devops"
        billable = "true"
        owner    = "joedoe"
      },
    }
  ]
  dataset_labels = {
    env      = "dev"
    billable = "true"
    owner    = "janesmith"
  }
}
