resource "google_project_service" "monitoring_googleapis_com" {
  project = "12324343423"
  service = "monitoring.googleapis.com"
}
# terraform import google_project_service.monitoring_googleapis_com 12324343423/monitoring.googleapis.com
