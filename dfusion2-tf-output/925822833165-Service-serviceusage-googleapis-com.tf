resource "google_project_service" "serviceusage_googleapis_com" {
  project = "12324343423"
  service = "serviceusage.googleapis.com"
}
# terraform import google_project_service.serviceusage_googleapis_com 12324343423/serviceusage.googleapis.com
