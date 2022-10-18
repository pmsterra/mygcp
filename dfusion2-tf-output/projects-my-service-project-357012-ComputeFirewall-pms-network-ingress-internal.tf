resource "google_compute_firewall" "test_network_ingress_internal" {
  allow {
    protocol = "icmp"
  }

  description   = "Allow ingress traffic from internal IP ranges"
  direction     = "INGRESS"
  name          = "test-network-ingress-internal"
  network       = "https://www.googleapis.com/compute/v1/projects/my-service-project-357012/global/networks/test-network"
  priority      = 1000
  project       = "my-service-project-357012"
  source_ranges = ["10.2.0.0/16"]
}
# terraform import google_compute_firewall.test_network_ingress_internal projects/my-service-project-357012/global/firewalls/test-network-ingress-internal
