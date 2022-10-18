resource "google_kms_key_ring" "mykeyring_9820fe6c" {
  location = "us-central1"
  name     = "mykeyring-9820fe6c"
  project  = "my-service-project-357012"
}
# terraform import google_kms_key_ring.mykeyring_9820fe6c projects/my-service-project-357012/locations/us-central1/keyRings/mykeyring-9820fe6c
