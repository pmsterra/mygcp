resource "google_pubsub_topic" "topicdflx" {
  name    = "topicdflx"
  project = "my-service-project-357012"
}
# terraform import google_pubsub_topic.topicdflx projects/my-service-project-357012/topics/topicdflx
