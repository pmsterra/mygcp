resource "google_project_service" "autoscaling_googleapis_com" {
  project = "12324343423"
  service = "autoscaling.googleapis.com"
}
# terraform import google_project_service.autoscaling_googleapis_com 12324343423/autoscaling.googleapis.com
