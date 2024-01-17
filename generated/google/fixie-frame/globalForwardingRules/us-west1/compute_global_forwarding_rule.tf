resource "google_compute_global_forwarding_rule" "tfer--api-fixie-ai-frontend" {
  ip_address            = "34.36.155.159"
  ip_protocol           = "TCP"
  load_balancing_scheme = "EXTERNAL_MANAGED"
  name                  = "api-fixie-ai-frontend"
  port_range            = "443-443"
  project               = "fixie-frame"
  target                = "https://www.googleapis.com/compute/v1/projects/fixie-frame/global/targetHttpsProxies/api-fixie-ai-lb-target-proxy"
}

resource "google_compute_global_forwarding_rule" "tfer--api-fixie-ai-frontend-forwarding-rule" {
  ip_address            = "34.36.155.159"
  ip_protocol           = "TCP"
  load_balancing_scheme = "EXTERNAL_MANAGED"
  name                  = "api-fixie-ai-frontend-forwarding-rule"
  port_range            = "80-80"
  project               = "fixie-frame"
  target                = "https://www.googleapis.com/compute/v1/projects/fixie-frame/global/targetHttpProxies/api-fixie-ai-frontend-target-proxy"
}

resource "google_compute_global_forwarding_rule" "tfer--beta-fixie-ai-forwarding-rule" {
  ip_address            = "34.36.113.220"
  ip_protocol           = "TCP"
  load_balancing_scheme = "EXTERNAL_MANAGED"
  name                  = "beta-fixie-ai-forwarding-rule"
  port_range            = "443-443"
  project               = "fixie-frame"
  target                = "https://www.googleapis.com/compute/v1/projects/fixie-frame/global/targetHttpsProxies/beta-fixie-ai-target-proxy"
}

resource "google_compute_global_forwarding_rule" "tfer--beta-fixie-ai-forwarding-rule-http" {
  ip_address            = "34.36.113.220"
  ip_protocol           = "TCP"
  load_balancing_scheme = "EXTERNAL_MANAGED"
  name                  = "beta-fixie-ai-forwarding-rule-http"
  port_range            = "80-80"
  project               = "fixie-frame"
  target                = "https://www.googleapis.com/compute/v1/projects/fixie-frame/global/targetHttpProxies/beta-fixie-ai-target-proxy-http"
}

resource "google_compute_global_forwarding_rule" "tfer--console-fixie-ai-frontend" {
  ip_address            = "34.149.241.156"
  ip_protocol           = "TCP"
  load_balancing_scheme = "EXTERNAL_MANAGED"
  name                  = "console-fixie-ai-frontend"
  port_range            = "443-443"
  project               = "fixie-frame"
  target                = "https://www.googleapis.com/compute/v1/projects/fixie-frame/global/targetHttpsProxies/console-fixie-ai-lb-target-proxy-2"
}

resource "google_compute_global_forwarding_rule" "tfer--console-fixie-ai-frontend-forwarding-rule" {
  ip_address            = "34.149.241.156"
  ip_protocol           = "TCP"
  load_balancing_scheme = "EXTERNAL_MANAGED"
  name                  = "console-fixie-ai-frontend-forwarding-rule"
  port_range            = "80-80"
  project               = "fixie-frame"
  target                = "https://www.googleapis.com/compute/v1/projects/fixie-frame/global/targetHttpProxies/console-fixie-ai-frontend-target-proxy"
}

resource "google_compute_global_forwarding_rule" "tfer--console-fixie-ai-lb-forwarding-rule" {
  ip_address            = "34.96.105.171"
  ip_protocol           = "TCP"
  ip_version            = "IPV4"
  load_balancing_scheme = "EXTERNAL_MANAGED"
  name                  = "console-fixie-ai-lb-forwarding-rule"
  port_range            = "80-80"
  project               = "fixie-frame"
  target                = "https://www.googleapis.com/compute/v1/projects/fixie-frame/global/targetHttpProxies/console-fixie-ai-lb-target-proxy"
}

resource "google_compute_global_forwarding_rule" "tfer--dgonprem-frontend-lb" {
  ip_address            = "34.36.242.185"
  ip_protocol           = "TCP"
  load_balancing_scheme = "EXTERNAL_MANAGED"
  name                  = "dgonprem-frontend-lb"
  port_range            = "443-443"
  project               = "fixie-frame"
  target                = "https://www.googleapis.com/compute/v1/projects/fixie-frame/global/targetHttpsProxies/dgonprem-lb-target-proxy"
}

resource "google_compute_global_forwarding_rule" "tfer--dgonprem-frontend-lb-forwarding-rule" {
  ip_address            = "34.36.242.185"
  ip_protocol           = "TCP"
  load_balancing_scheme = "EXTERNAL_MANAGED"
  name                  = "dgonprem-frontend-lb-forwarding-rule"
  port_range            = "80-80"
  project               = "fixie-frame"
  target                = "https://www.googleapis.com/compute/v1/projects/fixie-frame/global/targetHttpProxies/dgonprem-frontend-lb-target-proxy"
}

resource "google_compute_global_forwarding_rule" "tfer--fixie-frame-frontend-ip" {
  ip_address            = "34.160.50.245"
  ip_protocol           = "TCP"
  load_balancing_scheme = "EXTERNAL_MANAGED"
  name                  = "fixie-frame-frontend-ip"
  port_range            = "443-443"
  project               = "fixie-frame"
  target                = "https://www.googleapis.com/compute/v1/projects/fixie-frame/global/targetHttpsProxies/custom-domains-49a4-target-proxy"
}

resource "google_compute_global_forwarding_rule" "tfer--fixie-frame-frontend-ip-forwarding-rule" {
  ip_address            = "34.160.50.245"
  ip_protocol           = "TCP"
  load_balancing_scheme = "EXTERNAL_MANAGED"
  name                  = "fixie-frame-frontend-ip-forwarding-rule"
  port_range            = "80-80"
  project               = "fixie-frame"
  target                = "https://www.googleapis.com/compute/v1/projects/fixie-frame/global/targetHttpProxies/fixie-frame-frontend-ip-target-proxy"
}

resource "google_compute_global_forwarding_rule" "tfer--voice-fixie-ai-lb" {
  ip_address            = "34.128.140.227"
  ip_protocol           = "TCP"
  load_balancing_scheme = "EXTERNAL_MANAGED"
  name                  = "voice-fixie-ai-lb"
  port_range            = "443-443"
  project               = "fixie-frame"
  target                = "https://www.googleapis.com/compute/v1/projects/fixie-frame/global/targetHttpsProxies/voice-fixie-ai-lb-target-proxy"
}

resource "google_compute_global_forwarding_rule" "tfer--voice-fixie-ai-lb-forwarding-rule" {
  ip_address            = "34.128.140.227"
  ip_protocol           = "TCP"
  load_balancing_scheme = "EXTERNAL_MANAGED"
  name                  = "voice-fixie-ai-lb-forwarding-rule"
  port_range            = "80-80"
  project               = "fixie-frame"
  target                = "https://www.googleapis.com/compute/v1/projects/fixie-frame/global/targetHttpProxies/voice-fixie-ai-lb-target-proxy"
}
