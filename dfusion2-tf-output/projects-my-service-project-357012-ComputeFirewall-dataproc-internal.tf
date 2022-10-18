resource "google_compute_firewall" "dataproc_internal" {
  allow {
    ports    = ["1-65535"]
    protocol = "tcp"
  }

  allow {
    ports    = ["1-65535"]
    protocol = "udp"
  }

  allow {
    ports    = ["22"]
    protocol = "tcp"
  }

  allow {
    protocol = "icmp"
  }

  description   = "Allow hosts in dataproc subnet to talk to each other on all ports"
  direction     = "INGRESS"
  name          = "dataproc-internal"
  network       = "https://www.googleapis.com/compute/v1/projects/my-service-project-357012/global/networks/test-network"
  priority      = 80
  project       = "my-service-project-357012"
  source_ranges = ["10.2.0.0"]
}
# terraform import google_compute_firewall.dataproc_internal projects/my-service-project-357012/global/firewalls/dataproc-internal
