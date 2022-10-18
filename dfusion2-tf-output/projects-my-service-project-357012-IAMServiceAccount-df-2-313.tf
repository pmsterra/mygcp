resource "google_service_account" "df_2_313" {
  account_id   = "df-2-313"
  display_name = "df-2"
  project      = "my-service-project-357012"
}
# terraform import google_service_account.df_2_313 projects/my-service-project-357012/serviceAccounts/df-2-313@my-service-project-357012.iam.gserviceaccount.com
