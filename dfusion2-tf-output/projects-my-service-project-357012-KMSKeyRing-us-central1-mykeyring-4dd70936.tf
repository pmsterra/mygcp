resource "google_kms_key_ring" "mykeyring_4dd70936" {
  location = "us-central1"
  name     = "mykeyring-4dd70936"
  project  = "my-service-project-357012"
}
# terraform import google_kms_key_ring.mykeyring_4dd70936 projects/my-service-project-357012/locations/us-central1/keyRings/mykeyring-4dd70936
