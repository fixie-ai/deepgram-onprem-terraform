resource "google_compute_health_check" "tfer--dgonprem-health-check" {
  check_interval_sec = "5"
  healthy_threshold  = "2"

  log_config {
    enable = "false"
  }

  name    = "dgonprem-health-check"
  project = "fixie-frame"

  tcp_health_check {
    port         = "80"
    proxy_header = "NONE"
  }

  timeout_sec         = "5"
  unhealthy_threshold = "2"
}

resource "google_compute_health_check" "tfer--dgonprem-health-check-8080" {
  check_interval_sec = "5"
  healthy_threshold  = "2"

  log_config {
    enable = "false"
  }

  name    = "dgonprem-health-check-8080"
  project = "fixie-frame"

  tcp_health_check {
    port         = "8080"
    proxy_header = "NONE"
  }

  timeout_sec         = "5"
  unhealthy_threshold = "2"
}

resource "google_compute_health_check" "tfer--dgonprem-t4-health-check" {
  check_interval_sec = "5"
  healthy_threshold  = "2"

  log_config {
    enable = "false"
  }

  name    = "dgonprem-t4-health-check"
  project = "fixie-frame"

  tcp_health_check {
    port         = "8080"
    proxy_header = "NONE"
  }

  timeout_sec         = "5"
  unhealthy_threshold = "2"
}
