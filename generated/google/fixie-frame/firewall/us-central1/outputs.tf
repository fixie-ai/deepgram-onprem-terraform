output "google_compute_firewall_tfer--allow-port-8000_self_link" {
  value = "${google_compute_firewall.tfer--allow-port-8000.self_link}"
}

output "google_compute_firewall_tfer--default-allow-http_self_link" {
  value = "${google_compute_firewall.tfer--default-allow-http.self_link}"
}

output "google_compute_firewall_tfer--default-allow-https_self_link" {
  value = "${google_compute_firewall.tfer--default-allow-https.self_link}"
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

output "google_compute_firewall_tfer--torchserve-allow-888x-tcp_self_link" {
  value = "${google_compute_firewall.tfer--torchserve-allow-888x-tcp.self_link}"
}
