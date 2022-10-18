resource "google_project_service" "bigquerystorage_googleapis_com" {
  project = "12324343423"
  service = "bigquerystorage.googleapis.com"
}
# terraform import google_project_service.bigquerystorage_googleapis_com 12324343423/bigquerystorage.googleapis.com
