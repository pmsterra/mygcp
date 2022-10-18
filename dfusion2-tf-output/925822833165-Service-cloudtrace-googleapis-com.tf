resource "google_project_service" "cloudtrace_googleapis_com" {
  project = "12324343423"
  service = "cloudtrace.googleapis.com"
}
# terraform import google_project_service.cloudtrace_googleapis_com 12324343423/cloudtrace.googleapis.com
