resource "google_compute_global_address" "tfer--api-fixie-ai-ip" {
  address       = "34.36.155.159"
  address_type  = "EXTERNAL"
  ip_version    = "IPV4"
  name          = "api-fixie-ai-ip"
  prefix_length = "0"
  project       = "fixie-frame"
}

resource "google_compute_global_address" "tfer--beta-fixie-ai-ip" {
  address       = "34.36.113.220"
  address_type  = "EXTERNAL"
  ip_version    = "IPV4"
  name          = "beta-fixie-ai-ip"
  prefix_length = "0"
  project       = "fixie-frame"
}

resource "google_compute_global_address" "tfer--console-fixie-ai-ip" {
  address       = "34.149.241.156"
  address_type  = "EXTERNAL"
  ip_version    = "IPV4"
  name          = "console-fixie-ai-ip"
  prefix_length = "0"
  project       = "fixie-frame"
}

resource "google_compute_global_address" "tfer--custom-domains-49a4-ip" {
  address       = "34.160.50.245"
  address_type  = "EXTERNAL"
  name          = "custom-domains-49a4-ip"
  prefix_length = "0"
  project       = "fixie-frame"
}

resource "google_compute_global_address" "tfer--dgonprem-lb-frontend-ip" {
  address       = "34.36.242.185"
  address_type  = "EXTERNAL"
  ip_version    = "IPV4"
  name          = "dgonprem-lb-frontend-ip"
  prefix_length = "0"
  project       = "fixie-frame"
}

resource "google_compute_global_address" "tfer--voice-fixie-ai-ip" {
  address       = "34.128.140.227"
  address_type  = "EXTERNAL"
  ip_version    = "IPV4"
  name          = "voice-fixie-ai-ip"
  prefix_length = "0"
  project       = "fixie-frame"
}
