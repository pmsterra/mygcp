resource "google_compute_firewall" "allow_data_fusion_ssh" {
  allow {
    ports    = ["22"]
    protocol = "tcp"
  }

  description   = "Allow IPs from the the allocation for private data fusion instance to SSH to dataproc clusters"
  direction     = "INGRESS"
  name          = "allow-data-fusion-ssh"
  network       = "https://www.googleapis.com/compute/v1/projects/my-service-project-357012/global/networks/test-network"
  priority      = 80
  project       = "my-service-project-357012"
  source_ranges = ["10.2.0.0/16"]
}
# terraform import google_compute_firewall.allow_data_fusion_ssh projects/my-service-project-357012/global/firewalls/allow-data-fusion-ssh
