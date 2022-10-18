resource "google_project_service" "dataproc_googleapis_com" {
  project = "12324343423"
  service = "dataproc.googleapis.com"
}
# terraform import google_project_service.dataproc_googleapis_com 12324343423/dataproc.googleapis.com
