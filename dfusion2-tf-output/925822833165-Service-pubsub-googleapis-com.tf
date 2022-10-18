resource "google_project_service" "pubsub_googleapis_com" {
  project = "12324343423"
  service = "pubsub.googleapis.com"
}
# terraform import google_project_service.pubsub_googleapis_com 12324343423/pubsub.googleapis.com
