resource "google_compute_network" "test_network" {
  auto_create_subnetworks = false
  name                    = "test-network"
  project                 = "my-service-project-357012"
  routing_mode            = "REGIONAL"
}
# terraform import google_compute_network.test_network projects/my-service-project-357012/global/networks/test-network
