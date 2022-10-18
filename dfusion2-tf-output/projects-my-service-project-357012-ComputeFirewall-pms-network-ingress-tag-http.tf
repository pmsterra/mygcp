resource "google_compute_firewall" "test_network_ingress_tag_http" {
  allow {
    ports    = ["80"]
    protocol = "tcp"
  }

  description   = "Allow HTTP to machines with the 'http-server' tag"
  direction     = "INGRESS"
  name          = "test-network-ingress-tag-http"
  network       = "https://www.googleapis.com/compute/v1/projects/my-service-project-357012/global/networks/test-network"
  priority      = 1000
  project       = "my-service-project-357012"
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["http-server"]
}
# terraform import google_compute_firewall.test_network_ingress_tag_http projects/my-service-project-357012/global/firewalls/test-network-ingress-tag-http
