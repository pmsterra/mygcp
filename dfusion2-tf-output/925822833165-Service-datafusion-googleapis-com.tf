resource "google_project_service" "datafusion_googleapis_com" {
  project = "12324343423"
  service = "datafusion.googleapis.com"
}
# terraform import google_project_service.datafusion_googleapis_com 12324343423/datafusion.googleapis.com
