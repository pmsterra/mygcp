

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

resource "google_storage_bucket_object" "temp_folder" {
  content = "test"
  name = "tmp_dir/"
  bucket = google_storage_bucket.static-site.name
  
}

# resource "google_dataflow_job" "testjob_df" {
#   project = "my-test-1-355710"
#   region = "us-central1"
#   name = "testdf"
#   template_gcs_path = "gs://df-store/word_count"
#   temp_gcs_location = "gs://df-store/tmp_dir"
#   parameters = {
#     inputFile = "gs://df-store/kingliar.txt"
#     output = "gs://df-store/output"
#   }
#   ip_configuration = "WORKER_IP_PRIVATE"
#   labels = {
#     "type" = "batchtype"
#     "owner" = "pms"
#   }
# }




