resource "google_compute_global_address" "cdf_us_west1_testinst" {
  address       = "10.164.232.0"
  address_type  = "INTERNAL"
  description   = "IP Range for data fusion instance creation."
  name          = "cdf-us-west1-testinst"
  network       = "https://www.googleapis.com/compute/v1/projects/my-service-project-357012/global/networks/test-network"
  prefix_length = 22
  project       = "my-service-project-357012"
  purpose       = "VPC_PEERING"
}
# terraform import google_compute_global_address.cdf_us_west1_testinst projects/my-service-project-357012/global/addresses/cdf-us-west1-testinst
