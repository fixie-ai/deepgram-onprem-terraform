# This is a packer config that will build the image for the Deepgram on-prem
# service. To build the image, run:
#    packer build build.pkr.hcl
# In this directory.

packer {
  required_plugins {
    googlecompute = {
      version = ">= 1.1.1"
      source  = "github.com/hashicorp/googlecompute"
    }
  }
}

source "googlecompute" "dgonprem-packer-image" {
  image_name         = "deepgram-onprem-{{timestamp}}"
  project_id          = "fixie-frame"
  source_image_family = "common-dl-gpu-debian-11"
  zone                = "us-west1-a"
  image_description   = "Deepgram on-prem image built using Packer"
  ssh_username        = "root"
  machine_type        = "n1-standard-16"
#  startup_script_file = "startup.sh"
  on_host_maintenance = "TERMINATE"
  accelerator_type    = "https://www.googleapis.com/compute/v1/projects/fixie-frame/zones/us-west1-a/acceleratorTypes/nvidia-tesla-t4"
  accelerator_count   = 1
  disk_size           = 50
  use_os_login        = true

}

build {
  sources = ["sources.googlecompute.dgonprem-packer-image"]

  # Set up deepgram user.
  provisioner "shell" {
    inline = [
      "sudo useradd -m -s /bin/bash deepgram",
      "sudo usermod -aG docker deepgram",
      "sudo usermod -aG docker $USER",
      "newgrp docker",
      "mkdir /tmp/deepgram",
    ]
  }

  # Copy over config files.
  provisioner "file" {
    source = "config"
    destination = "/tmp/deepgram"
  }

  # Run setup script.
  provisioner "shell" {
    script = "setup.sh"
  }

  # Emit manifest.json file.
  post-processor "manifest" {
    output = "manifest.json"
    strip_path = true
  }
}

