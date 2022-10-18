resource "google_project_service" "iamcredentials_googleapis_com" {
  project = "12324343423"
  service = "iamcredentials.googleapis.com"
}
# terraform import google_project_service.iamcredentials_googleapis_com 12324343423/iamcredentials.googleapis.com
