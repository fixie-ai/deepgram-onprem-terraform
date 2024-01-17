output "google_compute_instance_tfer--deepgram-onprem_self_link" {
  value = "${google_compute_instance.tfer--deepgram-onprem.self_link}"
}

output "google_compute_instance_tfer--dgonprem-t4_self_link" {
  value = "${google_compute_instance.tfer--dgonprem-t4.self_link}"
}

output "google_compute_instance_tfer--gpu-test_self_link" {
  value = "${google_compute_instance.tfer--gpu-test.self_link}"
}

output "google_compute_instance_tfer--torchserve-v100-001_self_link" {
  value = "${google_compute_instance.tfer--torchserve-v100-001.self_link}"
}
