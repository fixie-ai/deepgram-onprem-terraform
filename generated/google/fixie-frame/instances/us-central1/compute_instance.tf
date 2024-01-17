resource "google_compute_instance" "tfer--ben-windows-vm" {
  boot_disk {
    auto_delete = "true"
    device_name = "instance-1"
    mode        = "READ_WRITE"
    source      = "https://www.googleapis.com/compute/v1/projects/fixie-frame/zones/us-central1-a/disks/ben-windows-vm"
  }

  can_ip_forward = "false"

  confidential_instance_config {
    enable_confidential_compute = "false"
  }

  deletion_protection = "false"
  enable_display      = "false"
  machine_type        = "e2-medium"

  metadata = {
    windows-keys = "{\"expireOn\":\"2023-09-06T19:05:21.439215Z\",\"userName\":\"ben\",\"email\":\"mdw@fixie.ai\",\"modulus\":\"gNGSmPUl1GmMpDXkNKMbD0nj5vD0yWr7OkvBWvSJX97IFn7D8oQQ459vfVKjRcg2vtQlgo9pdTS20rp/lzLVExIbzV+yfB83061OTbMGwzcRZNKpp68NgMm0R4C5ZsOebCIyIk/pG1yIKukhB5fC9HihcazDXq9MoN+qxPrAsXyOQtElg2wB1A/C02/0tLqH/sdDXmBQf+SEUpt7gmLZndZypRsNBsSUfpZV1ZS4HHurCczjnbvtCsnxp8jHJ0uyznlLLYuLVj3O6Na5d0ro7igGu7vkroHWVN4h/cF1q44oVu6u5dZ0Aa8ODo4aRz7PbrpsvxyTjWrPn4sB0WuLvQ==\",\"exponent\":\"AQAB\"}"
  }

  name = "ben-windows-vm"

  network_interface {
    access_config {
      network_tier = "PREMIUM"
    }

    network            = "https://www.googleapis.com/compute/v1/projects/fixie-frame/global/networks/default"
    network_ip         = "10.128.0.50"
    queue_count        = "0"
    stack_type         = "IPV4_ONLY"
    subnetwork         = "https://www.googleapis.com/compute/v1/projects/fixie-frame/regions/us-central1/subnetworks/default"
    subnetwork_project = "fixie-frame"
  }

  project = "fixie-frame"

  reservation_affinity {
    type = "ANY_RESERVATION"
  }

  scheduling {
    automatic_restart   = "true"
    min_node_cpus       = "0"
    on_host_maintenance = "MIGRATE"
    preemptible         = "false"
    provisioning_model  = "STANDARD"
  }

  service_account {
    email  = "548385236069-compute@developer.gserviceaccount.com"
    scopes = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring.write", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
  }

  shielded_instance_config {
    enable_integrity_monitoring = "true"
    enable_secure_boot          = "false"
    enable_vtpm                 = "true"
  }

  tags = ["http-server", "https-server"]
  zone = "us-central1-a"
}

resource "google_compute_instance" "tfer--hessam-1x-a100-40g-dev" {
  boot_disk {
    auto_delete = "true"
    device_name = "hessam-1x-a100-40g-dev"
    mode        = "READ_WRITE"
    source      = "https://www.googleapis.com/compute/v1/projects/fixie-frame/zones/us-central1-c/disks/hessam-1x-a100-40g-dev"
  }

  can_ip_forward = "false"

  confidential_instance_config {
    enable_confidential_compute = "false"
  }

  deletion_protection = "false"
  enable_display      = "false"

  guest_accelerator {
    count = "1"
    type  = "https://www.googleapis.com/compute/v1/projects/fixie-frame/zones/us-central1-c/acceleratorTypes/nvidia-tesla-a100"
  }

  machine_type = "a2-highgpu-1g"
  name         = "hessam-1x-a100-40g-dev"

  network_interface {
    access_config {
      network_tier = "PREMIUM"
    }

    network            = "https://www.googleapis.com/compute/v1/projects/fixie-frame/global/networks/default"
    network_ip         = "10.128.0.14"
    queue_count        = "0"
    stack_type         = "IPV4_ONLY"
    subnetwork         = "https://www.googleapis.com/compute/v1/projects/fixie-frame/regions/us-central1/subnetworks/default"
    subnetwork_project = "fixie-frame"
  }

  project = "fixie-frame"

  reservation_affinity {
    type = "ANY_RESERVATION"
  }

  scheduling {
    automatic_restart   = "true"
    min_node_cpus       = "0"
    on_host_maintenance = "TERMINATE"
    preemptible         = "false"
    provisioning_model  = "STANDARD"
  }

  service_account {
    email  = "548385236069-compute@developer.gserviceaccount.com"
    scopes = ["https://www.googleapis.com/auth/cloud-platform"]
  }

  shielded_instance_config {
    enable_integrity_monitoring = "true"
    enable_secure_boot          = "false"
    enable_vtpm                 = "true"
  }

  tags = ["http-server", "https-server"]
  zone = "us-central1-c"
}
