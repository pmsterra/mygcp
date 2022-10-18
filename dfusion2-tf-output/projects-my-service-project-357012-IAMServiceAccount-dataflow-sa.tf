resource "google_service_account" "dataflow_sa" {
  account_id   = "dataflow-sa"
  display_name = "dataflow-sa"
  project      = "my-service-project-357012"
}
# terraform import google_service_account.dataflow_sa projects/my-service-project-357012/serviceAccounts/dataflow-sa@my-service-project-357012.iam.gserviceaccount.com
