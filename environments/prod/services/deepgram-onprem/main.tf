# Defines the Managed Instance Group for the Deepgram on-prem service.

provider "google" {
  project = "fixie-frame"
  zone    =  "us-west1-a"
}

# This image is created using Packer from the configs in packer/dgonprem.
#
# TO UPDATE THE IMAGE:
#
# 1. Edit the name field below to the new image name. This is in the `manifest.json`
#    file left in the packer/dgonprem directory after a successful build.
# 2. Comment out the `resource "google_compute_instance_group_manager" "mig" { ... }`
#    block below.
# 3. Do a `terraform apply`. This will delete the MIG and update the instance template.
# 4. Uncomment the `resource "google_compute_instance_group_manager" "mig" { ... }` block.
# 5. Run `terraform apply` again to recreate the MIG.
#
# These steps are necessary because the Google provider has a bug where it doesn't
# apply updates in the correct order in this case. See:
# https://github.com/hashicorp/terraform-provider-google/issues/6376
  
data "google_compute_image" "packer_image" {
  name = "deepgram-onprem-1707253541"
}

# Instance template.
resource "google_compute_instance_template" "template" {
  name         = "dgonprem-instance-template"

  machine_type = "n1-standard-16"

  guest_accelerator {
    count = "1"
    type  = "nvidia-tesla-t4"
  }

  disk {
    auto_delete  = "true"
    boot         = "true"
    disk_size_gb = "64"
    disk_type    = "pd-standard"
    mode         = "READ_WRITE"
    source_image = data.google_compute_image.packer_image.self_link
    type         = "PERSISTENT"
  }

  can_ip_forward = "false"

  confidential_instance_config {
    enable_confidential_compute = "false"
  }

  network_interface {
    access_config {
      network_tier = "PREMIUM"
    }
    network     = "https://www.googleapis.com/compute/v1/projects/fixie-frame/global/networks/default"
    queue_count = "0"
    stack_type  = "IPV4_ONLY"
  }

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

  tags = ["lb-health-check"]
}

# The Managed Instance Group.
resource "google_compute_instance_group_manager" "mig" {
  auto_healing_policies {
    health_check      = "https://www.googleapis.com/compute/v1/projects/fixie-frame/global/healthChecks/dgonprem-mig-health-check-8080"
    initial_delay_sec = "300"
  }

  version {
    instance_template  = google_compute_instance_template.template.id
  }

  base_instance_name             = "deepgram-onprem-t4-mig-tf"
  description                    = "Managed instance group for Deepgram on-prem on T4."
  list_managed_instances_results = "PAGELESS"
  name                           = "deepgram-onprem-t4-mig-tf"

  named_port {
    name = "http"
    port = "8080"
  }

  project     = "fixie-frame"
  target_size = "1"

  update_policy {
    max_surge_fixed         = "0"
    max_unavailable_fixed   = "1"
    minimal_action          = "REPLACE"
    replacement_method      = "SUBSTITUTE"
    type                    = "PROACTIVE"
  }

  wait_for_instances_status = "STABLE"
}

# Autoscaler for the Managed Instance Group.
resource "google_compute_autoscaler" "default" {
  name   = "dgonprem-autoscaler"
  target = google_compute_instance_group_manager.mig.id

  autoscaling_policy {
    min_replicas    = 1
    max_replicas    = 10
    cooldown_period = 300
    cpu_utilization {
      target = 0.60
    }
  }
}