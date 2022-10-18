resource "google_project_service" "cloudasset_googleapis_com" {
  project = "12324343423"
  service = "cloudasset.googleapis.com"
}
# terraform import google_project_service.cloudasset_googleapis_com 12324343423/cloudasset.googleapis.com
