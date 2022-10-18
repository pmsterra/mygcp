resource "google_storage_bucket" "dataflow_staging_us_central1_12324343423" {
  force_destroy            = false
  location                 = "US-CENTRAL1"
  name                     = "dataflow-staging-us-central1-12324343423"
  project                  = "my-service-project-357012"
  public_access_prevention = "inherited"
  storage_class            = "STANDARD"
}
# terraform import google_storage_bucket.dataflow_staging_us_central1_12324343423 dataflow-staging-us-central1-12324343423
