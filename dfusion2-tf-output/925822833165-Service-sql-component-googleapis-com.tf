resource "google_project_service" "sql_component_googleapis_com" {
  project = "12324343423"
  service = "sql-component.googleapis.com"
}
# terraform import google_project_service.sql_component_googleapis_com 12324343423/sql-component.googleapis.com
