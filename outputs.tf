output "deepgram-onprem_self_link" {
  value = "${google_compute_instance.deepgram-onprem.self_link}"
}

output "dgonprem-t4_self_link" {
  value = "${google_compute_instance.dgonprem-t4.self_link}"
}
