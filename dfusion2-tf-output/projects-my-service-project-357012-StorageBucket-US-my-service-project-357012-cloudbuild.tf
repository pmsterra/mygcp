resource "google_storage_bucket" "my_service_project_357012_cloudbuild" {
  force_destroy            = false
  location                 = "US"
  name                     = "my-service-project-357012_cloudbuild"
  project                  = "my-service-project-357012"
  public_access_prevention = "inherited"
  storage_class            = "STANDARD"
}
# terraform import google_storage_bucket.my_service_project_357012_cloudbuild my-service-project-357012_cloudbuild
