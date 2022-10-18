resource "google_artifact_registry_repository" "myrepo" {
  format        = "DOCKER"
  location      = "us-central1"
  project       = "my-service-project-357012"
  repository_id = "myrepo"
}
# terraform import google_artifact_registry_repository.myrepo projects/my-service-project-357012/locations/us-central1/repositories/myrepo
