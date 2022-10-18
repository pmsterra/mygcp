resource "google_project_service" "artifactregistry_googleapis_com" {
  project = "12324343423"
  service = "artifactregistry.googleapis.com"
}
# terraform import google_project_service.artifactregistry_googleapis_com 12324343423/artifactregistry.googleapis.com
