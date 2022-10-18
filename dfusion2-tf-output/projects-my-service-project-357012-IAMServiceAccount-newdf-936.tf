resource "google_service_account" "newdf_936" {
  account_id   = "newdf-936"
  display_name = "newdf"
  project      = "my-service-project-357012"
}
# terraform import google_service_account.newdf_936 projects/my-service-project-357012/serviceAccounts/newdf-936@my-service-project-357012.iam.gserviceaccount.com
