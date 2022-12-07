


module "bigquery" {
  source                     = "git::https://github.com/ccarrylab/terraform-google-bigquery//modules/bigquery"
  dataset_id                 = "GTS2022"
  dataset_name               = "GTS2022"
  description                = "GTS Bigquery 2022"
  project_id                 = "citric-sprite-370915"
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
        owner    = "devopssupport"
      },
    }
  ]
  dataset_labels = {
    env      = "dev"
    billable = "true"
    owner    = "devopssupport"
  }
}
