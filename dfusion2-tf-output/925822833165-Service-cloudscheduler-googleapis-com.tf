resource "google_project_service" "cloudscheduler_googleapis_com" {
  project = "12324343423"
  service = "cloudscheduler.googleapis.com"
}
# terraform import google_project_service.cloudscheduler_googleapis_com 12324343423/cloudscheduler.googleapis.com
