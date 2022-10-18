resource "google_kms_key_ring" "mykeyring_7f520ae7" {
  location = "us-central1"
  name     = "mykeyring-7f520ae7"
  project  = "my-service-project-357012"
}
# terraform import google_kms_key_ring.mykeyring_7f520ae7 projects/my-service-project-357012/locations/us-central1/keyRings/mykeyring-7f520ae7
