
# https://github.com/GoogleCloudPlatform/DataflowTemplates/tree/main/v2/flex-wordcount-python
resource "random_id" "rand" {
  byte_length = 4
  keepers = {
    key_name = var.key_name
    bucket_name = var.bucket_name
  }
}
resource "google_kms_key_ring" "keyring" {
  name = lower("${var.keyring_name}-${random_id.rand.hex}")
  location = var.region
  project = var.service_project
}


resource "google_storage_bucket" "static-site" {
  name          = "pms-df-store"
  project = var.service_project
  force_destroy = true
  location      = "US"
  uniform_bucket_level_access = true
  
}

resource "google_storage_bucket_object" "df_classic_template" {
  source = "./files/word_count"
  name = "word_count"
  bucket = google_storage_bucket.static-site.name
}

resource "google_storage_bucket_object" "df_classic_input" {
  source = "./files/kingliar.txt"
  name = "kingliar.txt"
  bucket = google_storage_bucket.static-site.name
  
}

resource "google_storage_bucket_object" "df_flex_spec" {
  source = "./files/spec"
  name = "spec"
  bucket = google_storage_bucket.static-site.name
  
}

resource "google_storage_bucket_object" "temp_folder" {
  content = "test"
  name = "tmp_dir/"
  bucket = google_storage_bucket.static-site.name
  
}


# resource "google_dataflow_job" "testjob_df" {
#   project = var.service_project
#   region = "us-central1"
#   name = "testdf"
#   template_gcs_path = "gs://pms-df-store/word_count"
#   temp_gcs_location = "gs://pms-df-store/tmp_dir"
#   service_account_email = "mytfe-249@my-service-project-357012.iam.gserviceaccount.com"
#   parameters = {
#     inputFile = "gs://pms-df-store/kingliar.txt"
#     output = "gs://pms-df-store/output"
#   }
#   ip_configuration = "WORKER_IP_PRIVATE"
#   labels = {
#     "type" = "batchtype"
#     "owner" = "pms"
#   }
 #   #network = "https://www.googleapis.com/compute/v1/projects/925822833165/global/networks/pms-network"
#   #subnetwork= "https://www.googleapis.com/compute/v1/projects/925822833165/regions/us-central1/subnetworks/pms-subnetwork"
#   network = "projects/925822833165/global/networks/pms-network"
#   subnetwork= "regions/us-central1/subnetworks/pms-subnetwork"

# }
/*
resource "google_dataflow_flex_template_job" "flex_df_job" {
  provider                = google-beta
  project = var.service_project
  region = "us-central1"
  name                    = "dataflow-flex-job"
  container_spec_gcs_path = "gs://pms-df-store/spec"
  parameters = {
                       "input" = "gs://pms-df-store/specliar.txt"
                   "output"  = "gs://pms-df-store/output_flex"
                   "format" = "text"
                   service_account_email = "mytfe-249@my-service-project-357012.iam.gserviceaccount.com"
  }
labels = {
     "type" = "flex"
     "owner" = "tikki"
   }
    network = "projects/925822833165/global/networks/pms-network"
    subnetwork= "regions/us-central1/subnetworks/pms-subnetwork"

}
*/






