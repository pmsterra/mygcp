resource "google_project_service" "firestore_googleapis_com" {
  project = "12324343423"
  service = "firestore.googleapis.com"
}
# terraform import google_project_service.firestore_googleapis_com 12324343423/firestore.googleapis.com
