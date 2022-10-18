resource "google_project_service" "iam_googleapis_com" {
  project = "12324343423"
  service = "iam.googleapis.com"
}
# terraform import google_project_service.iam_googleapis_com 12324343423/iam.googleapis.com
