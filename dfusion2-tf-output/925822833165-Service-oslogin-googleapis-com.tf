resource "google_project_service" "oslogin_googleapis_com" {
  project = "12324343423"
  service = "oslogin.googleapis.com"
}
# terraform import google_project_service.oslogin_googleapis_com 12324343423/oslogin.googleapis.com
