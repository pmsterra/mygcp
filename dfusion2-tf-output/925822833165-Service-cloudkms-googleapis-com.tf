resource "google_project_service" "cloudkms_googleapis_com" {
  project = "12324343423"
  service = "cloudkms.googleapis.com"
}
# terraform import google_project_service.cloudkms_googleapis_com 12324343423/cloudkms.googleapis.com
