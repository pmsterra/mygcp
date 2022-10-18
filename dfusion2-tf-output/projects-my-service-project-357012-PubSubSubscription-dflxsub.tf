resource "google_pubsub_subscription" "dflxsub" {
  ack_deadline_seconds = 10

  expiration_policy {
    ttl = "2678400s"
  }

  message_retention_duration = "604800s"
  name                       = "dflxsub"
  project                    = "my-service-project-357012"
  topic                      = "projects/my-service-project-357012/topics/topicdflx"
}
# terraform import google_pubsub_subscription.dflxsub projects/my-service-project-357012/subscriptions/dflxsub
