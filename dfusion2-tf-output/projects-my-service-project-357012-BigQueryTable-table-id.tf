resource "google_bigquery_table" "table_id" {
  dataset_id = "mydataset"
  project    = "my-service-project-357012"
  schema     = "[{\"mode\":\"NULLABLE\",\"name\":\"url\",\"type\":\"STRING\"},{\"mode\":\"NULLABLE\",\"name\":\"num_reviews\",\"type\":\"INTEGER\"},{\"mode\":\"NULLABLE\",\"name\":\"score\",\"type\":\"FLOAT\"},{\"mode\":\"NULLABLE\",\"name\":\"first_date\",\"type\":\"TIMESTAMP\"},{\"mode\":\"NULLABLE\",\"name\":\"last_date\",\"type\":\"TIMESTAMP\"}]"
  table_id   = "TABLE_ID"
}
# terraform import google_bigquery_table.table_id projects/my-service-project-357012/datasets/mydataset/tables/TABLE_ID
