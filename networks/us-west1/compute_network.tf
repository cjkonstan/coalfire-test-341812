resource "google_compute_network" "tfer--default" {
  auto_create_subnetworks         = "true"
  delete_default_routes_on_create = "false"
  description                     = "Default network for the project"
  mtu                             = "0"
  name                            = "default"
  project                         = "coalfire-test-341812"
  routing_mode                    = "REGIONAL"
}

resource "google_compute_network" "tfer--vcp-1" {
  auto_create_subnetworks         = "false"
  delete_default_routes_on_create = "false"
  mtu                             = "1460"
  name                            = "vcp-1"
  project                         = "coalfire-test-341812"
  routing_mode                    = "REGIONAL"
}
