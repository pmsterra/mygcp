resource "google_project_service" "storage_api_googleapis_com" {
  project = "12324343423"
  service = "storage-api.googleapis.com"
}
# terraform import google_project_service.storage_api_googleapis_com 12324343423/storage-api.googleapis.com
