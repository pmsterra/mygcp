resource "google_compute_firewall" "test_network_ingress_tag_ssh" {
  allow {
    ports    = ["22"]
    protocol = "tcp"
  }

  description   = "Allow SSH to machines with the 'ssh' tag"
  direction     = "INGRESS"
  name          = "test-network-ingress-tag-ssh"
  network       = "https://www.googleapis.com/compute/v1/projects/my-service-project-357012/global/networks/test-network"
  priority      = 1000
  project       = "my-service-project-357012"
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["ssh"]
}
# terraform import google_compute_firewall.test_network_ingress_tag_ssh projects/my-service-project-357012/global/firewalls/test-network-ingress-tag-ssh
