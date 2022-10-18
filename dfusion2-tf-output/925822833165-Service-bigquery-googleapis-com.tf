resource "google_project_service" "bigquery_googleapis_com" {
  project = "12324343423"
  service = "bigquery.googleapis.com"
}
# terraform import google_project_service.bigquery_googleapis_com 12324343423/bigquery.googleapis.com
