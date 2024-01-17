resource "google_compute_backend_service" "tfer--beta-fixie-ai-be" {
  affinity_cookie_ttl_sec = "0"

  backend {
    balancing_mode               = "UTILIZATION"
    capacity_scaler              = "1"
    group                        = "https://www.googleapis.com/compute/v1/projects/fixie-frame/regions/us-central1/networkEndpointGroups/beta-fixie-ai-neg"
    max_connections              = "0"
    max_connections_per_endpoint = "0"
    max_connections_per_instance = "0"
    max_rate                     = "0"
    max_rate_per_endpoint        = "0"
    max_rate_per_instance        = "0"
    max_utilization              = "0"
  }

  connection_draining_timeout_sec = "0"
  enable_cdn                      = "false"
  load_balancing_scheme           = "EXTERNAL_MANAGED"

  log_config {
    enable      = "false"
    sample_rate = "0"
  }

  name             = "beta-fixie-ai-be"
  port_name        = "http"
  project          = "fixie-frame"
  protocol         = "HTTP"
  session_affinity = "NONE"
  timeout_sec      = "30"
}

resource "google_compute_backend_service" "tfer--custom-domains-app-fixie-ai-main-49a4-be" {
  affinity_cookie_ttl_sec = "0"

  backend {
    balancing_mode               = "UTILIZATION"
    capacity_scaler              = "1"
    group                        = "https://www.googleapis.com/compute/v1/projects/fixie-frame/regions/us-central1/networkEndpointGroups/custom-domains-app-fixie-ai-main-49a4-neg"
    max_connections              = "0"
    max_connections_per_endpoint = "0"
    max_connections_per_instance = "0"
    max_rate                     = "0"
    max_rate_per_endpoint        = "0"
    max_rate_per_instance        = "0"
    max_utilization              = "0"
  }

  connection_draining_timeout_sec = "300"
  enable_cdn                      = "false"
  load_balancing_scheme           = "EXTERNAL_MANAGED"

  log_config {
    enable      = "false"
    sample_rate = "0"
  }

  name             = "custom-domains-app-fixie-ai-main-49a4-be"
  port_name        = "http"
  project          = "fixie-frame"
  protocol         = "HTTP"
  session_affinity = "NONE"
  timeout_sec      = "30"
}

resource "google_compute_backend_service" "tfer--dgonprem-lb-backend" {
  affinity_cookie_ttl_sec = "0"

  backend {
    balancing_mode               = "UTILIZATION"
    capacity_scaler              = "1"
    group                        = "https://www.googleapis.com/compute/v1/projects/fixie-frame/zones/us-west1-a/instanceGroups/dgonprem-instance-group"
    max_connections              = "0"
    max_connections_per_endpoint = "0"
    max_connections_per_instance = "0"
    max_rate                     = "0"
    max_rate_per_endpoint        = "0"
    max_rate_per_instance        = "0"
    max_utilization              = "1"
  }

  cdn_policy {
    cache_key_policy {
      include_host         = "true"
      include_protocol     = "true"
      include_query_string = "true"
    }

    cache_mode                   = "USE_ORIGIN_HEADERS"
    client_ttl                   = "0"
    default_ttl                  = "0"
    max_ttl                      = "0"
    negative_caching             = "false"
    serve_while_stale            = "0"
    signed_url_cache_max_age_sec = "0"
  }

  connection_draining_timeout_sec = "300"
  enable_cdn                      = "false"
  health_checks                   = ["${data.terraform_remote_state.healthChecks.outputs.google_compute_health_check_tfer--dgonprem-health-check-8080_self_link}"]
  load_balancing_scheme           = "EXTERNAL_MANAGED"
  locality_lb_policy              = "ROUND_ROBIN"

  log_config {
    enable      = "true"
    sample_rate = "1"
  }

  name             = "dgonprem-lb-backend"
  port_name        = "http"
  project          = "fixie-frame"
  protocol         = "HTTP"
  session_affinity = "NONE"
  timeout_sec      = "30"
}

resource "google_compute_backend_service" "tfer--dgonprem-t4-lb-backend" {
  affinity_cookie_ttl_sec = "0"

  backend {
    balancing_mode               = "UTILIZATION"
    capacity_scaler              = "1"
    group                        = "https://www.googleapis.com/compute/v1/projects/fixie-frame/zones/us-west1-a/instanceGroups/dgonprem-t4-instance-group"
    max_connections              = "0"
    max_connections_per_endpoint = "0"
    max_connections_per_instance = "0"
    max_rate                     = "0"
    max_rate_per_endpoint        = "0"
    max_rate_per_instance        = "0"
    max_utilization              = "0.8"
  }

  connection_draining_timeout_sec = "300"
  enable_cdn                      = "false"
  health_checks                   = ["${data.terraform_remote_state.healthChecks.outputs.google_compute_health_check_tfer--dgonprem-t4-health-check_self_link}"]
  load_balancing_scheme           = "EXTERNAL_MANAGED"
  locality_lb_policy              = "ROUND_ROBIN"

  log_config {
    enable      = "false"
    sample_rate = "0"
  }

  name             = "dgonprem-t4-lb-backend"
  port_name        = "http"
  project          = "fixie-frame"
  protocol         = "HTTP"
  session_affinity = "NONE"
  timeout_sec      = "30"
}

resource "google_compute_backend_service" "tfer--prod-fixie-ai-be" {
  affinity_cookie_ttl_sec = "0"

  backend {
    balancing_mode               = "UTILIZATION"
    capacity_scaler              = "1"
    group                        = "https://www.googleapis.com/compute/v1/projects/fixie-frame/regions/us-central1/networkEndpointGroups/prod-fixie-ai-neg"
    max_connections              = "0"
    max_connections_per_endpoint = "0"
    max_connections_per_instance = "0"
    max_rate                     = "0"
    max_rate_per_endpoint        = "0"
    max_rate_per_instance        = "0"
    max_utilization              = "0"
  }

  connection_draining_timeout_sec = "0"
  enable_cdn                      = "false"
  load_balancing_scheme           = "EXTERNAL_MANAGED"
  locality_lb_policy              = "ROUND_ROBIN"

  log_config {
    enable      = "false"
    sample_rate = "0"
  }

  name             = "prod-fixie-ai-be"
  port_name        = "http"
  project          = "fixie-frame"
  protocol         = "HTTPS"
  session_affinity = "NONE"
  timeout_sec      = "30"
}

resource "google_compute_backend_service" "tfer--voice-fixie-ai-be" {
  affinity_cookie_ttl_sec = "86400"

  backend {
    balancing_mode               = "UTILIZATION"
    capacity_scaler              = "1"
    group                        = "https://www.googleapis.com/compute/v1/projects/fixie-frame/regions/us-west1/networkEndpointGroups/voice-fixie-ai-neg"
    max_connections              = "0"
    max_connections_per_endpoint = "0"
    max_connections_per_instance = "0"
    max_rate                     = "0"
    max_rate_per_endpoint        = "0"
    max_rate_per_instance        = "0"
    max_utilization              = "0"
  }

  connection_draining_timeout_sec = "0"

  consistent_hash {
    minimum_ring_size = "1"
  }

  enable_cdn            = "false"
  load_balancing_scheme = "EXTERNAL_MANAGED"
  locality_lb_policy    = "RING_HASH"

  log_config {
    enable      = "true"
    sample_rate = "1"
  }

  name             = "voice-fixie-ai-be"
  port_name        = "http"
  project          = "fixie-frame"
  protocol         = "HTTPS"
  session_affinity = "GENERATED_COOKIE"
  timeout_sec      = "30"
}
