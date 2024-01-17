resource "google_compute_url_map" "tfer--api-fixie-ai-frontend-redirect" {
  default_url_redirect {
    https_redirect         = "true"
    redirect_response_code = "MOVED_PERMANENTLY_DEFAULT"
    strip_query            = "false"
  }

  description = "Automatically generated HTTP to HTTPS redirect for the api-fixie-ai-frontend forwarding rule"
  name        = "api-fixie-ai-frontend-redirect"
  project     = "fixie-frame"
}

resource "google_compute_url_map" "tfer--api-fixie-ai-lb" {
  default_service = "${data.terraform_remote_state.backendServices.outputs.google_compute_backend_service_tfer--prod-fixie-ai-be_self_link}"
  name            = "api-fixie-ai-lb"
  project         = "fixie-frame"
}

resource "google_compute_url_map" "tfer--beta-fixie-ai-urlmap" {
  default_service = "${data.terraform_remote_state.backendServices.outputs.google_compute_backend_service_tfer--beta-fixie-ai-be_self_link}"
  name            = "beta-fixie-ai-urlmap"
  project         = "fixie-frame"
}

resource "google_compute_url_map" "tfer--console-fixie-ai-frontend-redirect" {
  default_url_redirect {
    https_redirect         = "true"
    redirect_response_code = "MOVED_PERMANENTLY_DEFAULT"
    strip_query            = "false"
  }

  description = "Automatically generated HTTP to HTTPS redirect for the console-fixie-ai-frontend forwarding rule"
  name        = "console-fixie-ai-frontend-redirect"
  project     = "fixie-frame"
}

resource "google_compute_url_map" "tfer--console-fixie-ai-lb" {
  default_service = "${data.terraform_remote_state.backendServices.outputs.google_compute_backend_service_tfer--prod-fixie-ai-be_self_link}"
  name            = "console-fixie-ai-lb"
  project         = "fixie-frame"
}

resource "google_compute_url_map" "tfer--custom-domains-49a4" {
  default_url_redirect {
    https_redirect         = "false"
    redirect_response_code = "MOVED_PERMANENTLY_DEFAULT"
    strip_query            = "true"
  }

  host_rule {
    hosts        = ["app.fixie.ai"]
    path_matcher = "app-fixie-ai"
  }

  name = "custom-domains-49a4"

  path_matcher {
    default_service = "${data.terraform_remote_state.backendServices.outputs.google_compute_backend_service_tfer--custom-domains-app-fixie-ai-main-49a4-be_self_link}"
    name            = "app-fixie-ai"

    path_rule {
      paths   = ["/*"]
      service = "${data.terraform_remote_state.backendServices.outputs.google_compute_backend_service_tfer--custom-domains-app-fixie-ai-main-49a4-be_self_link}"
    }
  }

  project = "fixie-frame"
}

resource "google_compute_url_map" "tfer--dgonprem-frontend-lb-redirect" {
  default_url_redirect {
    https_redirect         = "true"
    redirect_response_code = "MOVED_PERMANENTLY_DEFAULT"
    strip_query            = "false"
  }

  description = "Automatically generated HTTP to HTTPS redirect for the dgonprem-frontend-lb forwarding rule"
  name        = "dgonprem-frontend-lb-redirect"
  project     = "fixie-frame"
}

resource "google_compute_url_map" "tfer--dgonprem-lb" {
  default_service = "${data.terraform_remote_state.backendServices.outputs.google_compute_backend_service_tfer--dgonprem-lb-backend_self_link}"

  host_rule {
    hosts        = ["t4.dgonprem.fixie.ai"]
    path_matcher = "path-matcher-1"
  }

  name = "dgonprem-lb"

  path_matcher {
    default_service = "${data.terraform_remote_state.backendServices.outputs.google_compute_backend_service_tfer--dgonprem-t4-lb-backend_self_link}"
    name            = "path-matcher-1"
  }

  project = "fixie-frame"
}

resource "google_compute_url_map" "tfer--fixie-frame-frontend-ip-redirect" {
  default_url_redirect {
    https_redirect         = "true"
    redirect_response_code = "MOVED_PERMANENTLY_DEFAULT"
    strip_query            = "false"
  }

  description = "Automatically generated HTTP to HTTPS redirect for the fixie-frame-frontend-ip forwarding rule"
  name        = "fixie-frame-frontend-ip-redirect"
  project     = "fixie-frame"
}

resource "google_compute_url_map" "tfer--voice-fixie-ai-lb" {
  default_service = "${data.terraform_remote_state.backendServices.outputs.google_compute_backend_service_tfer--voice-fixie-ai-be_self_link}"
  name            = "voice-fixie-ai-lb"
  project         = "fixie-frame"
}

resource "google_compute_url_map" "tfer--voice-fixie-ai-lb-redirect" {
  default_url_redirect {
    https_redirect         = "true"
    redirect_response_code = "MOVED_PERMANENTLY_DEFAULT"
    strip_query            = "false"
  }

  description = "Automatically generated HTTP to HTTPS redirect for the voice-fixie-ai-lb forwarding rule"
  name        = "voice-fixie-ai-lb-redirect"
  project     = "fixie-frame"
}
