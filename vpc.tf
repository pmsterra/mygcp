
# [START compute_shared_data_network]
data "google_compute_network" "network" {
  name    = "my-network-123"
  project = var.project
}
# [END compute_shared_data_network]

# [START compute_shared_data_subnet]
data "google_compute_subnetwork" "subnet" {
  name    = "my-subnet-123"
  project = var.project
  region  = var.region
}
# [END compute_shared_data_subnet]
