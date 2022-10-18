resource "google_storage_bucket" "artifacts_my_service_project_357012_appspot_com" {
  force_destroy            = false
  location                 = "US"
  name                     = "artifacts.my-service-project-357012.appspot.com"
  project                  = "my-service-project-357012"
  public_access_prevention = "inherited"
  storage_class            = "STANDARD"
}
# terraform import google_storage_bucket.artifacts_my_service_project_357012_appspot_com artifacts.my-service-project-357012.appspot.com
