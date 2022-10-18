resource "google_service_account" "mytfe_249" {
  account_id   = "mytfe-249"
  display_name = "mytfe"
  project      = "my-service-project-357012"
}
# terraform import google_service_account.mytfe_249 projects/my-service-project-357012/serviceAccounts/mytfe-249@my-service-project-357012.iam.gserviceaccount.com
