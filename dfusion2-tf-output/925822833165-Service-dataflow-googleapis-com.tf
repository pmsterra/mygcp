resource "google_project_service" "dataflow_googleapis_com" {
  project = "12324343423"
  service = "dataflow.googleapis.com"
}
# terraform import google_project_service.dataflow_googleapis_com 12324343423/dataflow.googleapis.com
