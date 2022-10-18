resource "google_project_service" "cloudbuild_googleapis_com" {
  project = "12324343423"
  service = "cloudbuild.googleapis.com"
}
# terraform import google_project_service.cloudbuild_googleapis_com 12324343423/cloudbuild.googleapis.com
