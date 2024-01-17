resource "google_compute_instance_group" "tfer--us-west1-a-002F-dgonprem-instance-group" {
  instances = ["https://www.googleapis.com/compute/v1/projects/fixie-frame/zones/us-west1-a/instances/deepgram-onprem"]
  name      = "dgonprem-instance-group"

  named_port {
    name = "http"
    port = "8080"
  }

  named_port {
    name = "https"
    port = "443"
  }

  network = "https://www.googleapis.com/compute/v1/projects/fixie-frame/global/networks/default"
  project = "fixie-frame"
  zone    = "us-west1-a"
}

resource "google_compute_instance_group" "tfer--us-west1-a-002F-dgonprem-t4-instance-group" {
  description = "Same as dgonprem-instance-group, but with a T4 GPU."
  instances   = ["https://www.googleapis.com/compute/v1/projects/fixie-frame/zones/us-west1-a/instances/dgonprem-t4"]
  name        = "dgonprem-t4-instance-group"

  named_port {
    name = "http"
    port = "8080"
  }

  network = "https://www.googleapis.com/compute/v1/projects/fixie-frame/global/networks/default"
  project = "fixie-frame"
  zone    = "us-west1-a"
}
