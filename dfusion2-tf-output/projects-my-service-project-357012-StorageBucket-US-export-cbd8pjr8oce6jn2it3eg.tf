resource "google_storage_bucket" "export_cbd8pjr8oce6jn2it3eg" {
  force_destroy            = false
  location                 = "US"
  name                     = "export-cbd8pjr8oce6jn2it3eg"
  project                  = "my-service-project-357012"
  public_access_prevention = "inherited"
  storage_class            = "STANDARD"
}
# terraform import google_storage_bucket.export_cbd8pjr8oce6jn2it3eg export-cbd8pjr8oce6jn2it3eg
