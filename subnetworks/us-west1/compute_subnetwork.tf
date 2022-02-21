resource "google_compute_subnetwork" "tfer--default" {
  ip_cidr_range              = "10.138.0.0/20"
  name                       = "default"
  network                    = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  private_ip_google_access   = "false"
  private_ipv6_google_access = "DISABLE_GOOGLE_ACCESS"
  project                    = "coalfire-test-341812"
  purpose                    = "PRIVATE"
  region                     = "us-west1"
  stack_type                 = "IPV4_ONLY"
}

resource "google_compute_subnetwork" "tfer--subnet-1" {
  ip_cidr_range              = "10.0.0.0/24"
  name                       = "subnet-1"
  network                    = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--vcp-1_self_link}"
  private_ip_google_access   = "false"
  private_ipv6_google_access = "DISABLE_GOOGLE_ACCESS"
  project                    = "coalfire-test-341812"
  purpose                    = "PRIVATE"
  region                     = "us-west1"
  stack_type                 = "IPV4_ONLY"
}

resource "google_compute_subnetwork" "tfer--subnet-2" {
  ip_cidr_range              = "10.0.1.0/24"
  name                       = "subnet-2"
  network                    = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--vcp-1_self_link}"
  private_ip_google_access   = "false"
  private_ipv6_google_access = "DISABLE_GOOGLE_ACCESS"
  project                    = "coalfire-test-341812"
  purpose                    = "PRIVATE"
  region                     = "us-west1"
  stack_type                 = "IPV4_ONLY"
}

resource "google_compute_subnetwork" "tfer--subnet-3" {
  ip_cidr_range              = "10.0.2.0/24"
  name                       = "subnet-3"
  network                    = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--vcp-1_self_link}"
  private_ip_google_access   = "true"
  private_ipv6_google_access = "DISABLE_GOOGLE_ACCESS"
  project                    = "coalfire-test-341812"
  purpose                    = "PRIVATE"
  region                     = "us-west1"
  stack_type                 = "IPV4_ONLY"
}

resource "google_compute_subnetwork" "tfer--subnet-4" {
  ip_cidr_range              = "10.0.3.0/24"
  name                       = "subnet-4"
  network                    = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--vcp-1_self_link}"
  private_ip_google_access   = "false"
  private_ipv6_google_access = "DISABLE_GOOGLE_ACCESS"
  project                    = "coalfire-test-341812"
  purpose                    = "PRIVATE"
  region                     = "us-west1"
  stack_type                 = "IPV4_ONLY"
}
