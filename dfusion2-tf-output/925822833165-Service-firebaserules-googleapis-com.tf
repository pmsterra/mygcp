resource "google_project_service" "firebaserules_googleapis_com" {
  project = "12324343423"
  service = "firebaserules.googleapis.com"
}
# terraform import google_project_service.firebaserules_googleapis_com 12324343423/firebaserules.googleapis.com
