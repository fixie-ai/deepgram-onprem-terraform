resource "google_compute_disk" "tfer--us-central1-a-002F-ben-windows-vm" {
  image                     = "https://www.googleapis.com/compute/v1/projects/windows-cloud/global/images/windows-server-2022-dc-v20230809"
  name                      = "ben-windows-vm"
  physical_block_size_bytes = "4096"
  project                   = "fixie-frame"
  provisioned_iops          = "0"
  size                      = "50"
  type                      = "pd-balanced"
  zone                      = "us-central1-a"
}

resource "google_compute_disk" "tfer--us-central1-a-002F-hessam-dev" {
  image                     = "https://www.googleapis.com/compute/v1/projects/debian-cloud/global/images/debian-11-bullseye-v20230306"
  name                      = "hessam-dev"
  physical_block_size_bytes = "4096"
  project                   = "fixie-frame"
  provisioned_iops          = "0"
  size                      = "1000"
  type                      = "pd-balanced"
  zone                      = "us-central1-a"
}

resource "google_compute_disk" "tfer--us-central1-c-002F-hessam-1x-a100-40g-dev" {
  image                     = "https://www.googleapis.com/compute/v1/projects/ml-images/global/images/c0-deeplearning-common-cu110-v20230501-debian-10"
  name                      = "hessam-1x-a100-40g-dev"
  physical_block_size_bytes = "4096"
  project                   = "fixie-frame"
  provisioned_iops          = "0"
  size                      = "2000"
  type                      = "pd-balanced"
  zone                      = "us-central1-c"
}

resource "google_compute_disk" "tfer--us-west1-a-002F-deepgram-onprem" {
  image                     = "https://www.googleapis.com/compute/v1/projects/ubuntu-os-cloud/global/images/ubuntu-2204-jammy-v20231030"
  name                      = "deepgram-onprem"
  physical_block_size_bytes = "4096"
  project                   = "fixie-frame"
  provisioned_iops          = "0"
  size                      = "48"
  type                      = "pd-ssd"
  zone                      = "us-west1-a"
}

resource "google_compute_disk" "tfer--us-west1-a-002F-dgonprem-t4" {
  name                      = "dgonprem-t4"
  physical_block_size_bytes = "4096"
  project                   = "fixie-frame"
  provisioned_iops          = "0"
  size                      = "48"
  type                      = "pd-ssd"
  zone                      = "us-west1-a"
}

resource "google_compute_disk" "tfer--us-west1-a-002F-gpu-test" {
  image                     = "https://www.googleapis.com/compute/v1/projects/ml-images/global/images/c0-deeplearning-common-gpu-v20231209-debian-11-py310"
  name                      = "gpu-test"
  physical_block_size_bytes = "4096"
  project                   = "fixie-frame"
  provisioned_iops          = "0"
  size                      = "500"
  type                      = "pd-standard"
  zone                      = "us-west1-a"
}

resource "google_compute_disk" "tfer--us-west1-b-002F-torchserve-v100-001" {
  image                     = "https://www.googleapis.com/compute/v1/projects/ml-images/global/images/c0-deeplearning-common-cu110-v20221107-debian-10"
  name                      = "torchserve-v100-001"
  physical_block_size_bytes = "4096"
  project                   = "fixie-frame"
  provisioned_iops          = "0"
  size                      = "50"
  type                      = "pd-balanced"
  zone                      = "us-west1-b"
}
