output "google_compute_firewall_tfer--allow-ssh-ingress-from-iap_self_link" {
  value = "${google_compute_firewall.tfer--allow-ssh-ingress-from-iap.self_link}"
}

output "google_compute_firewall_tfer--default-allow-http_self_link" {
  value = "${google_compute_firewall.tfer--default-allow-http.self_link}"
}

output "google_compute_firewall_tfer--default-allow-icmp_self_link" {
  value = "${google_compute_firewall.tfer--default-allow-icmp.self_link}"
}

output "google_compute_firewall_tfer--default-allow-internal_self_link" {
  value = "${google_compute_firewall.tfer--default-allow-internal.self_link}"
}

output "google_compute_firewall_tfer--default-allow-rdp_self_link" {
  value = "${google_compute_firewall.tfer--default-allow-rdp.self_link}"
}

output "google_compute_firewall_tfer--default-allow-ssh_self_link" {
  value = "${google_compute_firewall.tfer--default-allow-ssh.self_link}"
}

output "google_compute_firewall_tfer--ssh_self_link" {
  value = "${google_compute_firewall.tfer--ssh.self_link}"
}

output "google_compute_firewall_tfer--vcp-1-allow-http_self_link" {
  value = "${google_compute_firewall.tfer--vcp-1-allow-http.self_link}"
}

output "google_compute_firewall_tfer--vcp-allow-ssh_self_link" {
  value = "${google_compute_firewall.tfer--vcp-allow-ssh.self_link}"
}
