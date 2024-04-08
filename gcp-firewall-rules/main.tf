provider "google" {
  credentials = file(var.credentials_file)
  project     = var.project_id
  region      = var.region
}

resource "google_compute_firewall" "in_cloud_ad_domain_controller" {
  name          = "${var.win_domain}-domain-controller"
  network       = var.network
  target_tags   = var.ad_dc_tags // this targets our tagged VM
  source_ranges = var.source_ranges
  allow {
    protocol = "tcp"
    ports    = ["3389"]
  }

  allow {
    protocol = "udp"
    ports    = ["3389"]
  }

  allow {
    protocol = "tcp"
    ports    = ["53"]
  }

  allow {
    protocol = "udp"
    ports    = ["53"]
  }
}

