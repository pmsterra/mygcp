resource "google_bigquery_dataset" "mydataset" {
  access {
    role          = "OWNER"
    special_group = "projectOwners"
  }

  access {
    role          = "OWNER"
    user_by_email = "pmsgcp22@gmail.com"
  }

  access {
    role          = "READER"
    special_group = "projectReaders"
  }

  access {
    role          = "WRITER"
    special_group = "projectWriters"
  }

  dataset_id                 = "mydataset"
  delete_contents_on_destroy = false
  location                   = "us-central1"
  project                    = "my-service-project-357012"
}
# terraform import google_bigquery_dataset.mydataset projects/my-service-project-357012/datasets/mydataset
