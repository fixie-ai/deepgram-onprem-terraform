resource "google_compute_instance" "tfer--deepgram-onprem" {
  boot_disk {
    auto_delete = "true"
    device_name = "deepgram-onprem"
    mode        = "READ_WRITE"
    source      = "https://www.googleapis.com/compute/v1/projects/fixie-frame/zones/us-west1-a/disks/deepgram-onprem"
  }

  can_ip_forward = "false"

  confidential_instance_config {
    enable_confidential_compute = "false"
  }

  deletion_protection = "false"
  enable_display      = "false"

  guest_accelerator {
    count = "1"
    type  = "https://www.googleapis.com/compute/v1/projects/fixie-frame/zones/us-west1-a/acceleratorTypes/nvidia-tesla-v100"
  }

  labels = {
    goog-ops-agent-policy = "v2-x86-template-1-1-0"
  }

  machine_type = "n1-standard-8"

  metadata = {
    enable-osconfig = "TRUE"
    ssh-keys        = "mdw:ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBJjkmCJKazY6jzLQ046yK8ohA1dm6NKKf2X86HWTncHi5+0Av4D+vZL7IUOaTYmijcKijISWQKsH5RzKNyx42o4= google-ssh {\"userName\":\"mdw@fixie.ai\",\"expireOn\":\"2024-01-09T22:05:54+0000\"}\nmdw:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCQVN+yoSKle2+3tzU0NvzQs7JPkxgz2ycVM4RuCt5tBuW6qQ7d6YbvBTpUIzW5/MBCstJyleJW7iFJncDwzpMtJHN4IW+icw4kwUBmhH3x2BZQvnAaJMf6xNlgG9QHWz2weYwXjE2qDMKMUA4rEVNroCCgwQrKjz3bnv6f9jkiPaGNcqkxd1CnhypN0ElKqXfGOOI2m1Rd36CVV8fN5DNnxH0NBerQ6QjfbZjv6AAB0rtQPBqFoTNoHwRkpgAdl8skyInZslUJ7E51Uhsnn8/4RRPeq445/GoxG60M+O2af1bOpvTrhQ9+2d1mKoAfoP7fu7G5PIiV3gw5DuODSqFb google-ssh {\"userName\":\"mdw@fixie.ai\",\"expireOn\":\"2024-01-09T22:06:08+0000\"}"
  }

  name = "deepgram-onprem"

  network_interface {
    access_config {
      nat_ip       = "34.83.64.251"
      network_tier = "PREMIUM"
    }

    network            = "https://www.googleapis.com/compute/v1/projects/fixie-frame/global/networks/default"
    network_ip         = "10.138.0.28"
    queue_count        = "0"
    stack_type         = "IPV4_ONLY"
    subnetwork         = "https://www.googleapis.com/compute/v1/projects/fixie-frame/regions/us-west1/subnetworks/default"
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
    scopes = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring.write", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
  }

  shielded_instance_config {
    enable_integrity_monitoring = "true"
    enable_secure_boot          = "false"
    enable_vtpm                 = "true"
  }

  tags = ["https-server"]
  zone = "us-west1-a"
}

resource "google_compute_instance" "tfer--dgonprem-t4" {
  boot_disk {
    auto_delete = "true"
    device_name = "deepgram-onprem"
    mode        = "READ_WRITE"
    source      = "https://www.googleapis.com/compute/v1/projects/fixie-frame/zones/us-west1-a/disks/dgonprem-t4"
  }

  can_ip_forward = "false"

  confidential_instance_config {
    enable_confidential_compute = "false"
  }

  deletion_protection = "false"
  enable_display      = "false"

  guest_accelerator {
    count = "1"
    type  = "https://www.googleapis.com/compute/v1/projects/fixie-frame/zones/us-west1-a/acceleratorTypes/nvidia-tesla-t4"
  }

  labels = {
    goog-ops-agent-policy = "v2-x86-template-1-1-0"
  }

  machine_type = "n1-standard-16"

  metadata = {
    enable-osconfig = "TRUE"
    ssh-keys        = "justin:ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBCuPoVQj7QWvokBz/MSbfMctl517DocFjdHZnl7NybmysFj8+T14qq8pvjyQI2WBVfF4gXD5iM1eMDjLkIpSHbM= google-ssh {\"userName\":\"justin@fixie.ai\",\"expireOn\":\"2024-01-10T02:03:37+0000\"}\njustin:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAGDDYMCaF834GjmlqsLdzHU++qZOK4gmJUMVyRo7oNZPKlx2vlbqqoZDx2oLsLPECUMd+CpBuISwztjXSYaDmNans8BDQWSMRlC7bRO8Uzs2/ugGS3RgijEx1MKeOf1HApQOse6bNWhkScxjH+k/fq+lgk2AHd4FxN1wwIgZ9LvJh4Kc/zHGCzjWBFlaE9uARduGA0Ibe/EJSyRtoGgxa4KvwqBU4mMBrWD385oXQl7LFwx6fKIGJ4yhATgDic6GFprjMvL2TvgCjiaxs/1vMiGa5yVlitbLp2e0UZQDy0fpax7e5JbGtvRkkzWT73G0izgDAgDmBIwh0ECIW2TQVVk= google-ssh {\"userName\":\"justin@fixie.ai\",\"expireOn\":\"2024-01-10T02:03:51+0000\"}"
  }

  name = "dgonprem-t4"

  network_interface {
    access_config {
      nat_ip       = "34.82.39.251"
      network_tier = "PREMIUM"
    }

    network            = "https://www.googleapis.com/compute/v1/projects/fixie-frame/global/networks/default"
    network_ip         = "10.138.0.29"
    queue_count        = "0"
    stack_type         = "IPV4_ONLY"
    subnetwork         = "https://www.googleapis.com/compute/v1/projects/fixie-frame/regions/us-west1/subnetworks/default"
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
    scopes = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring.write", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
  }

  shielded_instance_config {
    enable_integrity_monitoring = "true"
    enable_secure_boot          = "false"
    enable_vtpm                 = "true"
  }

  tags = ["https-server"]
  zone = "us-west1-a"
}

resource "google_compute_instance" "tfer--gpu-test" {
  boot_disk {
    auto_delete = "true"
    device_name = "gpu-test"
    mode        = "READ_WRITE"
    source      = "https://www.googleapis.com/compute/v1/projects/fixie-frame/zones/us-west1-a/disks/gpu-test"
  }

  can_ip_forward = "false"

  confidential_instance_config {
    enable_confidential_compute = "false"
  }

  deletion_protection = "false"
  enable_display      = "false"

  guest_accelerator {
    count = "1"
    type  = "https://www.googleapis.com/compute/v1/projects/fixie-frame/zones/us-west1-a/acceleratorTypes/nvidia-tesla-t4"
  }

  machine_type = "n1-standard-16"

  metadata = {
    ssh-keys = "farzad:ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBA2c3Me4xCCO4IJDcI/1a/hwGefq/NKl5Br2Elck55sEvVS2Jh/FOh4Uiyrsdb1FMaEtmamNtT1jrBTdw/IIavk= google-ssh {\"userName\":\"farzad@fixie.ai\",\"expireOn\":\"2024-01-12T00:33:09+0000\"}"
  }

  name = "gpu-test"

  network_interface {
    access_config {
      network_tier = "PREMIUM"
    }

    network            = "https://www.googleapis.com/compute/v1/projects/fixie-frame/global/networks/default"
    network_ip         = "10.138.0.30"
    queue_count        = "0"
    stack_type         = "IPV4_ONLY"
    subnetwork         = "https://www.googleapis.com/compute/v1/projects/fixie-frame/regions/us-west1/subnetworks/default"
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
    scopes = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring.write", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
  }

  shielded_instance_config {
    enable_integrity_monitoring = "true"
    enable_secure_boot          = "false"
    enable_vtpm                 = "true"
  }

  zone = "us-west1-a"
}

resource "google_compute_instance" "tfer--torchserve-v100-001" {
  boot_disk {
    auto_delete = "true"
    device_name = "torchserve-v100-001"
    mode        = "READ_WRITE"
    source      = "https://www.googleapis.com/compute/v1/projects/fixie-frame/zones/us-west1-b/disks/torchserve-v100-001"
  }

  can_ip_forward = "false"

  confidential_instance_config {
    enable_confidential_compute = "false"
  }

  deletion_protection = "false"
  enable_display      = "false"

  guest_accelerator {
    count = "1"
    type  = "https://www.googleapis.com/compute/v1/projects/fixie-frame/zones/us-west1-b/acceleratorTypes/nvidia-tesla-v100"
  }

  machine_type = "n1-highmem-8"
  name         = "torchserve-v100-001"

  network_interface {
    access_config {
      network_tier = "PREMIUM"
    }

    network            = "https://www.googleapis.com/compute/v1/projects/fixie-frame/global/networks/default"
    network_ip         = "10.138.0.5"
    queue_count        = "0"
    stack_type         = "IPV4_ONLY"
    subnetwork         = "https://www.googleapis.com/compute/v1/projects/fixie-frame/regions/us-west1/subnetworks/default"
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
    scopes = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring.write", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
  }

  shielded_instance_config {
    enable_integrity_monitoring = "true"
    enable_secure_boot          = "false"
    enable_vtpm                 = "true"
  }

  tags = ["http-server", "https-server", "torchserve"]
  zone = "us-west1-b"
}
