resource "google_project_service" "compute_googleapis_com" {
  project = "12324343423"
  service = "compute.googleapis.com"
}
# terraform import google_project_service.compute_googleapis_com 12324343423/compute.googleapis.com
