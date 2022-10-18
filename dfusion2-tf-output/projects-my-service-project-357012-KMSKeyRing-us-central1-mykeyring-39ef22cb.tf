resource "google_kms_key_ring" "mykeyring_39ef22cb" {
  location = "us-central1"
  name     = "mykeyring-39ef22cb"
  project  = "my-service-project-357012"
}
# terraform import google_kms_key_ring.mykeyring_39ef22cb projects/my-service-project-357012/locations/us-central1/keyRings/mykeyring-39ef22cb
