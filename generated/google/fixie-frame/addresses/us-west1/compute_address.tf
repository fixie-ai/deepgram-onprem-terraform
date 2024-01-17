resource "google_compute_address" "tfer--dgonprem-fixie-ai" {
  address       = "34.83.64.251"
  address_type  = "EXTERNAL"
  description   = "External IP for dgonprem.fixie.ai Deepgram VM."
  name          = "dgonprem-fixie-ai"
  network_tier  = "PREMIUM"
  prefix_length = "0"
  project       = "fixie-frame"
  region        = "us-west1"
}

resource "google_compute_address" "tfer--rtc-ip" {
  address       = "34.105.25.192"
  address_type  = "EXTERNAL"
  name          = "rtc-ip"
  network_tier  = "PREMIUM"
  prefix_length = "0"
  project       = "fixie-frame"
  region        = "us-west1"
}
