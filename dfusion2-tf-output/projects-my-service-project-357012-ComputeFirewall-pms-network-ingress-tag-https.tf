resource "google_compute_firewall" "test_network_ingress_tag_https" {
  allow {
    ports    = ["443"]
    protocol = "tcp"
  }

  description   = "Allow HTTPS to machines with the 'https' tag"
  direction     = "INGRESS"
  name          = "test-network-ingress-tag-https"
  network       = "https://www.googleapis.com/compute/v1/projects/my-service-project-357012/global/networks/test-network"
  priority      = 1000
  project       = "my-service-project-357012"
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["https-server"]
}
# terraform import google_compute_firewall.test_network_ingress_tag_https projects/my-service-project-357012/global/firewalls/test-network-ingress-tag-https
