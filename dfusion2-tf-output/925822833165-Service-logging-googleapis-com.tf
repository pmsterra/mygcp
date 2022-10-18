resource "google_project_service" "logging_googleapis_com" {
  project = "12324343423"
  service = "logging.googleapis.com"
}
# terraform import google_project_service.logging_googleapis_com 12324343423/logging.googleapis.com
