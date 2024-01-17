provider "google" {
  project = "fixie-frame"
}

terraform {
  required_providers {
    google = {
      version = "4.59.0"
    }
  }
}
