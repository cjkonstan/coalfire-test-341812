resource "google_compute_instance" "tfer--instance-1" {
  boot_disk {
    auto_delete = "true"
    device_name = "instance-1"
    mode        = "READ_WRITE"
    source      = "https://www.googleapis.com/compute/v1/projects/coalfire-test-341812/zones/us-west1-b/disks/instance-1"
  }

  can_ip_forward = "false"

  confidential_instance_config {
    enable_confidential_compute = "false"
  }

  deletion_protection = "false"
  enable_display      = "false"
  machine_type        = "e2-medium"
  name                = "instance-1"

  network_interface {
    access_config {
      nat_ip       = "34.83.225.13"
      network_tier = "PREMIUM"
    }

    network            = "https://www.googleapis.com/compute/v1/projects/coalfire-test-341812/global/networks/vcp-1"
    network_ip         = "10.0.0.4"
    queue_count        = "0"
    stack_type         = "IPV4_ONLY"
    subnetwork         = "https://www.googleapis.com/compute/v1/projects/coalfire-test-341812/regions/us-west1/subnetworks/subnet-1"
    subnetwork_project = "coalfire-test-341812"
  }

  project = "coalfire-test-341812"

  reservation_affinity {
    type = "ANY_RESERVATION"
  }

  scheduling {
    automatic_restart   = "true"
    min_node_cpus       = "0"
    on_host_maintenance = "MIGRATE"
    preemptible         = "false"
  }

  service_account {
    email  = "579081492586-compute@developer.gserviceaccount.com"
    scopes = ["https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/monitoring.write", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/trace.append"]
  }

  shielded_instance_config {
    enable_integrity_monitoring = "true"
    enable_secure_boot          = "false"
    enable_vtpm                 = "true"
  }

  zone = "us-west1-b"
}

resource "google_compute_instance" "tfer--instance-group-1-x8sg" {
  boot_disk {
    auto_delete = "true"
    device_name = "instance-template-1"
    mode        = "READ_WRITE"
    source      = "https://www.googleapis.com/compute/v1/projects/coalfire-test-341812/zones/us-west1-b/disks/instance-group-1-x8sg"
  }

  can_ip_forward = "false"

  confidential_instance_config {
    enable_confidential_compute = "false"
  }

  deletion_protection = "false"
  enable_display      = "false"
  machine_type        = "e2-medium"

  metadata = {
    created-by        = "projects/579081492586/zones/us-west1-b/instanceGroupManagers/instance-group-1"
    instance-template = "projects/579081492586/global/instanceTemplates/instance-template-1"
  }

  name = "instance-group-1-x8sg"

  network_interface {
    access_config {
      nat_ip       = "34.127.45.32"
      network_tier = "PREMIUM"
    }

    network            = "https://www.googleapis.com/compute/v1/projects/coalfire-test-341812/global/networks/vcp-1"
    network_ip         = "10.0.2.7"
    queue_count        = "0"
    stack_type         = "IPV4_ONLY"
    subnetwork         = "https://www.googleapis.com/compute/v1/projects/coalfire-test-341812/regions/us-west1/subnetworks/subnet-3"
    subnetwork_project = "coalfire-test-341812"
  }

  project = "coalfire-test-341812"

  reservation_affinity {
    type = "ANY_RESERVATION"
  }

  scheduling {
    automatic_restart   = "true"
    min_node_cpus       = "0"
    on_host_maintenance = "MIGRATE"
    preemptible         = "false"
  }

  service_account {
    email  = "579081492586-compute@developer.gserviceaccount.com"
    scopes = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append", "https://www.googleapis.com/auth/monitoring.write", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/service.management.readonly"]
  }

  shielded_instance_config {
    enable_integrity_monitoring = "true"
    enable_secure_boot          = "false"
    enable_vtpm                 = "true"
  }

  zone = "us-west1-b"
}
