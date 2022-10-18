resource "google_service_account" "datafusion_sa" {
  account_id   = "datafusion-sa"
  display_name = "datafusion-sa"
  project      = "my-service-project-357012"
}
# terraform import google_service_account.datafusion_sa projects/my-service-project-357012/serviceAccounts/datafusion-sa@my-service-project-357012.iam.gserviceaccount.com
