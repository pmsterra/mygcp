resource "google_compute_subnetwork" "test_subnetwork" {
  ip_cidr_range              = "10.2.0.0/16"
  name                       = "test-subnetwork"
  network                    = "https://www.googleapis.com/compute/v1/projects/my-service-project-357012/global/networks/test-network"
  private_ip_google_access   = true
  private_ipv6_google_access = "DISABLE_GOOGLE_ACCESS"
  project                    = "my-service-project-357012"
  purpose                    = "PRIVATE"
  region                     = "us-central1"
  stack_type                 = "IPV4_ONLY"
}
# terraform import google_compute_subnetwork.test_subnetwork projects/my-service-project-357012/regions/us-central1/subnetworks/test-subnetwork
