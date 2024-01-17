resource "google_compute_managed_ssl_certificate" "tfer--api-fixie-ai-cert" {
  certificate_id = "5705418955516204111"

  managed {
    domains = ["api.fixie.ai"]
  }

  name    = "api-fixie-ai-cert"
  project = "fixie-frame"
  type    = "MANAGED"
}

resource "google_compute_managed_ssl_certificate" "tfer--beta-fixie-ai-cert" {
  certificate_id = "4205493956299704197"

  managed {
    domains = ["beta.fixie.ai"]
  }

  name    = "beta-fixie-ai-cert"
  project = "fixie-frame"
  type    = "MANAGED"
}

resource "google_compute_managed_ssl_certificate" "tfer--console-fixie-ai-cert" {
  certificate_id = "2794427174693822359"

  managed {
    domains = ["console.fixie.ai"]
  }

  name    = "console-fixie-ai-cert"
  project = "fixie-frame"
  type    = "MANAGED"
}

resource "google_compute_managed_ssl_certificate" "tfer--custom-domains-app-fixie-ai-49a4-cert" {
  certificate_id = "651890199490874278"

  managed {
    domains = ["app.fixie.ai"]
  }

  name    = "custom-domains-app-fixie-ai-49a4-cert"
  project = "fixie-frame"
  type    = "MANAGED"
}

resource "google_compute_managed_ssl_certificate" "tfer--dgonprem-fixie-ai-cert-wildcard" {
  certificate_id = "6755389200699258571"

  managed {
    domains = ["dgonprem.fixie.ai", "t4.dgonprem.fixie.ai"]
  }

  name    = "dgonprem-fixie-ai-cert-wildcard"
  project = "fixie-frame"
  type    = "MANAGED"
}

resource "google_compute_managed_ssl_certificate" "tfer--dgonprem-ssl-cert-fixed" {
  certificate_id = "3047919314215463396"

  managed {
    domains = ["dgonprem.fixie.ai"]
  }

  name    = "dgonprem-ssl-cert-fixed"
  project = "fixie-frame"
  type    = "MANAGED"
}

resource "google_compute_managed_ssl_certificate" "tfer--voice2-fixie-ai-cert" {
  certificate_id = "7916161896946729332"

  managed {
    domains = ["voice2.fixie.ai"]
  }

  name    = "voice2-fixie-ai-cert"
  project = "fixie-frame"
  type    = "MANAGED"
}

resource "google_compute_managed_ssl_certificate" "tfer--wsapi-fixie-ai-cert" {
  certificate_id = "1600312909362003209"

  managed {
    domains = ["wsapi.fixie.ai"]
  }

  name    = "wsapi-fixie-ai-cert"
  project = "fixie-frame"
  type    = "MANAGED"
}
