resource "google_project_service" "containerregistry_googleapis_com" {
  project = "12324343423"
  service = "containerregistry.googleapis.com"
}
# terraform import google_project_service.containerregistry_googleapis_com 12324343423/containerregistry.googleapis.com
