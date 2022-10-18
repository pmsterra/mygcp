resource "google_pubsub_subscription" "susbsflx" {
  ack_deadline_seconds = 10

  expiration_policy {
    ttl = "2678400s"
  }

  message_retention_duration = "604800s"
  name                       = "susbsflx"
  project                    = "my-service-project-357012"
  topic                      = "projects/my-service-project-357012/topics/topicdflx"
}
# terraform import google_pubsub_subscription.susbsflx projects/my-service-project-357012/subscriptions/susbsflx
