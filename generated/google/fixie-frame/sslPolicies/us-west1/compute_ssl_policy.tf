resource "google_compute_ssl_policy" "tfer--fixie-frame-disable-older-tls-for-cloud-run" {
  description     = "Disable TLS 1.0 and 1.1 for Google Cloud Run"
  min_tls_version = "TLS_1_2"
  name            = "fixie-frame-disable-older-tls-for-cloud-run"
  profile         = "MODERN"
  project         = "fixie-frame"
}
