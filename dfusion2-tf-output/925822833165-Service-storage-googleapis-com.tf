resource "google_project_service" "storage_googleapis_com" {
  project = "12324343423"
  service = "storage.googleapis.com"
}
# terraform import google_project_service.storage_googleapis_com 12324343423/storage.googleapis.com
