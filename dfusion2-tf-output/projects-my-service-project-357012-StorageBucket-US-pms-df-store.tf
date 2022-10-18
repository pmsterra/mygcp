resource "google_storage_bucket" "test_df_store" {
  force_destroy               = false
  location                    = "US"
  name                        = "test-df-store"
  project                     = "my-service-project-357012"
  public_access_prevention    = "inherited"
  storage_class               = "STANDARD"
  uniform_bucket_level_access = true
}
# terraform import google_storage_bucket.test_df_store test-df-store
