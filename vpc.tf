
# [START compute_shared_data_network]
data "google_compute_network" "network" {
  name    = "my-vpc-network"
  project = var.service_project
}

resource "google_compute_network" "vpc_network" {
  name = "pms-network"
  project = var.service_project
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "network-with-private" {
  name          = "pms-subnetwork"
  ip_cidr_range = "10.2.0.0/16"
  region        = var.region
  network       = google_compute_network.vpc_network.id
  project = var.service_project
  private_ip_google_access   = true
}