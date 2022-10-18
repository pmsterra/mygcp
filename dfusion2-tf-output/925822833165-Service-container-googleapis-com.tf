resource "google_project_service" "container_googleapis_com" {
  project = "12324343423"
  service = "container.googleapis.com"
}
# terraform import google_project_service.container_googleapis_com 12324343423/container.googleapis.com
