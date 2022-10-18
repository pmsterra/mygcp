resource "google_project_service" "cloudapis_googleapis_com" {
  project = "12324343423"
  service = "cloudapis.googleapis.com"
}
# terraform import google_project_service.cloudapis_googleapis_com 12324343423/cloudapis.googleapis.com
