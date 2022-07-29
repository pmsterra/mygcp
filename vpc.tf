
resource "google_compute_network" "pms_network" {
  auto_create_subnetworks = false
  name                    = "pms-network"
  project                 = "my-service-project-357012"
  routing_mode            = "REGIONAL"
}
# terraform import google_compute_network.pms_network projects/my-service-project-357012/global/networks/pms-network
resource "google_compute_subnetwork" "pms_subnetwork" {
  ip_cidr_range              = "10.2.0.0/16"
  name                       = "pms-subnetwork"
  network                    = "https://www.googleapis.com/compute/v1/projects/my-service-project-357012/global/networks/pms-network"
  private_ip_google_access   = true
  private_ipv6_google_access = "DISABLE_GOOGLE_ACCESS"
  project                    = "my-service-project-357012"
  purpose                    = "PRIVATE"
  region                     = "us-central1"
  stack_type                 = "IPV4_ONLY"
}
# terraform import google_compute_subnetwork.pms_subnetwork projects/my-service-project-357012/regions/us-central1/subnetworks/pms-subnetwork


# resource "google_compute_network" "vpc_network" {
#   name = "pms-network"
#   project = var.service_project
#   auto_create_subnetworks = false
# }

# resource "google_compute_subnetwork" "network-with-private" {
#   name          = "pms-subnetwork"
#   ip_cidr_range = "10.2.0.0/16"
#   region        = var.region
#   network       = google_compute_network.vpc_network.id
#   project = var.service_project
#   private_ip_google_access   = true
# }