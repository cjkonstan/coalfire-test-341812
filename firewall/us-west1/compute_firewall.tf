resource "google_compute_firewall" "tfer--allow-ssh-ingress-from-iap" {
  allow {
    ports    = ["22"]
    protocol = "tcp"
  }

  direction     = "INGRESS"
  disabled      = "false"
  name          = "allow-ssh-ingress-from-iap"
  network       = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority      = "1000"
  project       = "coalfire-test-341812"
  source_ranges = ["35.235.240.0/20"]
}

resource "google_compute_firewall" "tfer--default-allow-http" {
  allow {
    ports    = ["80"]
    protocol = "tcp"
  }

  direction     = "INGRESS"
  disabled      = "false"
  name          = "default-allow-http"
  network       = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority      = "1000"
  project       = "coalfire-test-341812"
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["http-server"]
}

resource "google_compute_firewall" "tfer--default-allow-icmp" {
  allow {
    protocol = "icmp"
  }

  description   = "Allow ICMP from anywhere"
  direction     = "INGRESS"
  disabled      = "false"
  name          = "default-allow-icmp"
  network       = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority      = "65534"
  project       = "coalfire-test-341812"
  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "tfer--default-allow-internal" {
  allow {
    ports    = ["0-65535"]
    protocol = "tcp"
  }

  allow {
    protocol = "icmp"
  }

  allow {
    ports    = ["0-65535"]
    protocol = "udp"
  }

  description   = "Allow internal traffic on the default network"
  direction     = "INGRESS"
  disabled      = "false"
  name          = "default-allow-internal"
  network       = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority      = "65534"
  project       = "coalfire-test-341812"
  source_ranges = ["10.128.0.0/9"]
}

resource "google_compute_firewall" "tfer--default-allow-rdp" {
  allow {
    ports    = ["3389"]
    protocol = "tcp"
  }

  description   = "Allow RDP from anywhere"
  direction     = "INGRESS"
  disabled      = "false"
  name          = "default-allow-rdp"
  network       = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority      = "65534"
  project       = "coalfire-test-341812"
  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "tfer--default-allow-ssh" {
  allow {
    ports    = ["22"]
    protocol = "tcp"
  }

  description   = "Allow SSH from anywhere"
  direction     = "INGRESS"
  disabled      = "false"
  name          = "default-allow-ssh"
  network       = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority      = "65534"
  project       = "coalfire-test-341812"
  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "tfer--ssh" {
  allow {
    ports    = ["22"]
    protocol = "tcp"
  }

  description   = "Allow SSH traffic"
  direction     = "INGRESS"
  disabled      = "false"
  name          = "ssh"
  network       = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--vcp-1_self_link}"
  priority      = "1000"
  project       = "coalfire-test-341812"
  source_ranges = ["35.235.240.0/20"]
}

resource "google_compute_firewall" "tfer--vcp-1-allow-http" {
  allow {
    ports    = ["80"]
    protocol = "tcp"
  }

  direction     = "INGRESS"
  disabled      = "false"
  name          = "vcp-1-allow-http"
  network       = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--vcp-1_self_link}"
  priority      = "1000"
  project       = "coalfire-test-341812"
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["http-server"]
}

resource "google_compute_firewall" "tfer--vcp-allow-ssh" {
  allow {
    ports    = ["22"]
    protocol = "tcp"
  }

  direction     = "INGRESS"
  disabled      = "false"
  name          = "vcp-allow-ssh"
  network       = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--vcp-1_self_link}"
  priority      = "65534"
  project       = "coalfire-test-341812"
  source_ranges = ["0.0.0.0/0"]
}
