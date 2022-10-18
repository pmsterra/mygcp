
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
  name          = "test-df-store"
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

resource "google_storage_bucket_object" "df_flex_input" {
  source = "./files/specliar.txt"
  name = "specliar.txt"
  bucket = google_storage_bucket.static-site.name
  
}

resource "google_storage_bucket_object" "df_flex_spec" {
  source = "./files/spec"
  name = "spec_metadata"
  bucket = google_storage_bucket.static-site.name
  
}

resource "google_storage_bucket_object" "temp_folder" {
  content = "test"
  name = "tmp_dir/"
  bucket = google_storage_bucket.static-site.name
  
}

resource "google_storage_bucket_object" "staging_folder" {
  content = "staging"
  name = "staging_dir/"
  bucket = google_storage_bucket.static-site.name
  
}

#DF CLASSIC
# resource "google_dataflow_job" "testjob_df" {
#   project = var.service_project
#   region = "us-central1"
#   name = "testdf"
#   template_gcs_path = "gs://test-df-store/word_count"
#   temp_gcs_location = "gs://test-df-store/tmp_dir"
#   service_account_email = "mytfe-249@my-service-project-357012.iam.gserviceaccount.com"
#   parameters = {
#     inputFile = "gs://test-df-store/kingliar.txt"
#     output = "gs://test-df-store/output"
#   }
#   ip_configuration = "WORKER_IP_PRIVATE"
#   labels = {
#     "type" = "batchtype"
#     "owner" = "test"
#   }
 #   #network = "https://www.googleapis.com/compute/v1/projects/12324343423/global/networks/test-network"
#   #subnetwork= "https://www.googleapis.com/compute/v1/projects/12324343423/regions/us-central1/subnetworks/test-subnetwork"
#   network = "projects/12324343423/global/networks/test-network"
#   subnetwork= "regions/us-central1/subnetworks/test-subnetwork"

# }


#DF FLEX
# parameter option https://cloud.google.com/dataflow/docs/reference/pipeline-options
# resource "google_dataflow_flex_template_job" "flex_df_job" {
#   provider                = google-beta
#   project = var.service_project
#   region = "us-central1"
#   name                    = "dataflow-flex-job"
#   container_spec_gcs_path = "gs://test-df-store/wordcount.json"
  
#   parameters = {
#                        "input" = "gs://test-df-store/specliar.txt"
#                    "output"  = "gs://test-df-store/output_flex"
#                    "format" = "text"
#                    #service_account_email = "mytfe-249@my-service-project-357012.iam.gserviceaccount.com"
#                    network = "projects/12324343423/global/networks/test-network"
#                    subnetwork= "regions/us-central1/subnetworks/test-subnetwork"
#                    #temp_location = "gs://test-df-store/tmp_dir"
#                    #staging_location = "gs://test-df-store"
                   
#                    worker_region = "us-central1"
#                    #use_public_ips = "False"
#                    no_use_public_ips = "True"
#                    labels = "type=batchtype,dev=corp"
    
  
#   }
  

#}


resource "google_dataflow_flex_template_job" "dataflow_flex_template_job" {
  provider = google-beta

  project                 = var.service_project
  name                    = "mytestflexpub"
  container_spec_gcs_path = "gs://test-df-store/wordcount.json"
  region                  = "us-central1"
  on_delete               = "cancel"

  parameters = {
    service_account_email   = "newdf-936@my-service-project-357012.iam.gserviceaccount.com"
    subnetwork              = "regions/us-central1/subnetworks/test-subnetwork"
    #dataflow_kms_key        = var.kms_key_name
    temp_location           = "gs://test-df-store/tmp_dir"
    staging_location        = "gs://test-df-store/staging_dir"
    max_num_workers         = 2
    no_use_public_ips       = false
    #enable_streaming_engine = true
    worker_region = "us-central1"
     "input" = "gs://test-df-store/specliar.txt"
                    "output"  = "gs://test-df-store/output_flex"
                   "format" = "text"
  }


}









