resource "google_compute_global_address" "cdf_us_west1_mytest" {
  address       = "10.99.28.0"
  address_type  = "INTERNAL"
  description   = "IP Range for data fusion instance creation."
  name          = "cdf-us-west1-mytest"
  network       = "https://www.googleapis.com/compute/v1/projects/my-service-project-357012/global/networks/default"
  prefix_length = 22
  project       = "my-service-project-357012"
  purpose       = "VPC_PEERING"
}
# terraform import google_compute_global_address.cdf_us_west1_mytest projects/my-service-project-357012/global/addresses/cdf-us-west1-mytest
