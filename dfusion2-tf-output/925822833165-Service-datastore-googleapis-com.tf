resource "google_project_service" "datastore_googleapis_com" {
  project = "12324343423"
  service = "datastore.googleapis.com"
}
# terraform import google_project_service.datastore_googleapis_com 12324343423/datastore.googleapis.com
