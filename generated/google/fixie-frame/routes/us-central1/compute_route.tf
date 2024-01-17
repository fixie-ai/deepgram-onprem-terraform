resource "google_compute_route" "tfer--default-route-0185800ed9ec8c58" {
  description = "Default local route to the subnetwork 10.192.0.0/20."
  dest_range  = "10.192.0.0/20"
  name        = "default-route-0185800ed9ec8c58"
  network     = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority    = "0"
  project     = "fixie-frame"
}

resource "google_compute_route" "tfer--default-route-0633a32f20585833" {
  description = "Default local route to the subnetwork 10.162.0.0/20."
  dest_range  = "10.162.0.0/20"
  name        = "default-route-0633a32f20585833"
  network     = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority    = "0"
  project     = "fixie-frame"
}

resource "google_compute_route" "tfer--default-route-06f18a868d6d285f" {
  description = "Default local route to the subnetwork 10.202.0.0/20."
  dest_range  = "10.202.0.0/20"
  name        = "default-route-06f18a868d6d285f"
  network     = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority    = "0"
  project     = "fixie-frame"
}

resource "google_compute_route" "tfer--default-route-25195f96dac043dd" {
  description = "Default local route to the subnetwork 10.184.0.0/20."
  dest_range  = "10.184.0.0/20"
  name        = "default-route-25195f96dac043dd"
  network     = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority    = "0"
  project     = "fixie-frame"
}

resource "google_compute_route" "tfer--default-route-25e8db17e03a58d7" {
  description = "Default local route to the subnetwork 10.188.0.0/20."
  dest_range  = "10.188.0.0/20"
  name        = "default-route-25e8db17e03a58d7"
  network     = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority    = "0"
  project     = "fixie-frame"
}

resource "google_compute_route" "tfer--default-route-2b55b75571020831" {
  description = "Default local route to the subnetwork 10.212.0.0/20."
  dest_range  = "10.212.0.0/20"
  name        = "default-route-2b55b75571020831"
  network     = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority    = "0"
  project     = "fixie-frame"
}

resource "google_compute_route" "tfer--default-route-2c6c51b94c0d296f" {
  description = "Default local route to the subnetwork 10.204.0.0/20."
  dest_range  = "10.204.0.0/20"
  name        = "default-route-2c6c51b94c0d296f"
  network     = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority    = "0"
  project     = "fixie-frame"
}

resource "google_compute_route" "tfer--default-route-3d7b0de00c8ebacc" {
  description = "Default local route to the subnetwork 10.200.0.0/20."
  dest_range  = "10.200.0.0/20"
  name        = "default-route-3d7b0de00c8ebacc"
  network     = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority    = "0"
  project     = "fixie-frame"
}

resource "google_compute_route" "tfer--default-route-41ca34a392e4a692" {
  description = "Default local route to the subnetwork 10.8.0.0/28."
  dest_range  = "10.8.0.0/28"
  name        = "default-route-41ca34a392e4a692"
  network     = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority    = "0"
  project     = "fixie-frame"
}

resource "google_compute_route" "tfer--default-route-41e8356e0917eea6" {
  description = "Default local route to the subnetwork 10.182.0.0/20."
  dest_range  = "10.182.0.0/20"
  name        = "default-route-41e8356e0917eea6"
  network     = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority    = "0"
  project     = "fixie-frame"
}

resource "google_compute_route" "tfer--default-route-4665ab77dc8829f0" {
  description      = "Default route to the Internet."
  dest_range       = "0.0.0.0/0"
  name             = "default-route-4665ab77dc8829f0"
  network          = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  next_hop_gateway = "https://www.googleapis.com/compute/v1/projects/fixie-frame/global/gateways/default-internet-gateway"
  priority         = "1000"
  project          = "fixie-frame"
}

resource "google_compute_route" "tfer--default-route-4ebf058dd1fe678b" {
  description = "Default local route to the subnetwork 10.158.0.0/20."
  dest_range  = "10.158.0.0/20"
  name        = "default-route-4ebf058dd1fe678b"
  network     = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority    = "0"
  project     = "fixie-frame"
}

resource "google_compute_route" "tfer--default-route-522784efd0bba158" {
  description = "Default local route to the subnetwork 10.186.0.0/20."
  dest_range  = "10.186.0.0/20"
  name        = "default-route-522784efd0bba158"
  network     = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority    = "0"
  project     = "fixie-frame"
}

resource "google_compute_route" "tfer--default-route-55390fa82b47229f" {
  description = "Default local route to the subnetwork 10.174.0.0/20."
  dest_range  = "10.174.0.0/20"
  name        = "default-route-55390fa82b47229f"
  network     = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority    = "0"
  project     = "fixie-frame"
}

resource "google_compute_route" "tfer--default-route-5c715543431b2ad0" {
  description = "Default local route to the subnetwork 10.142.0.0/20."
  dest_range  = "10.142.0.0/20"
  name        = "default-route-5c715543431b2ad0"
  network     = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority    = "0"
  project     = "fixie-frame"
}

resource "google_compute_route" "tfer--default-route-5dc133c705c10ba4" {
  description = "Default local route to the subnetwork 10.206.0.0/20."
  dest_range  = "10.206.0.0/20"
  name        = "default-route-5dc133c705c10ba4"
  network     = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority    = "0"
  project     = "fixie-frame"
}

resource "google_compute_route" "tfer--default-route-65878fae08bc152a" {
  description = "Default local route to the subnetwork 10.156.0.0/20."
  dest_range  = "10.156.0.0/20"
  name        = "default-route-65878fae08bc152a"
  network     = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority    = "0"
  project     = "fixie-frame"
}

resource "google_compute_route" "tfer--default-route-660a1a3b5ae41e1d" {
  description = "Default local route to the subnetwork 10.164.0.0/20."
  dest_range  = "10.164.0.0/20"
  name        = "default-route-660a1a3b5ae41e1d"
  network     = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority    = "0"
  project     = "fixie-frame"
}

resource "google_compute_route" "tfer--default-route-758e503d4866de63" {
  description = "Default local route to the subnetwork 10.214.0.0/20."
  dest_range  = "10.214.0.0/20"
  name        = "default-route-758e503d4866de63"
  network     = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority    = "0"
  project     = "fixie-frame"
}

resource "google_compute_route" "tfer--default-route-80ff220cfbf6ae27" {
  description = "Default local route to the subnetwork 10.160.0.0/20."
  dest_range  = "10.160.0.0/20"
  name        = "default-route-80ff220cfbf6ae27"
  network     = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority    = "0"
  project     = "fixie-frame"
}

resource "google_compute_route" "tfer--default-route-8adf02f7c24be218" {
  description = "Default local route to the subnetwork 10.210.0.0/20."
  dest_range  = "10.210.0.0/20"
  name        = "default-route-8adf02f7c24be218"
  network     = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority    = "0"
  project     = "fixie-frame"
}

resource "google_compute_route" "tfer--default-route-8d1277e5999a5b3c" {
  description = "Default local route to the subnetwork 10.218.0.0/20."
  dest_range  = "10.218.0.0/20"
  name        = "default-route-8d1277e5999a5b3c"
  network     = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority    = "0"
  project     = "fixie-frame"
}

resource "google_compute_route" "tfer--default-route-92e9c06cc9e59a83" {
  description = "Default local route to the subnetwork 10.148.0.0/20."
  dest_range  = "10.148.0.0/20"
  name        = "default-route-92e9c06cc9e59a83"
  network     = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority    = "0"
  project     = "fixie-frame"
}

resource "google_compute_route" "tfer--default-route-98ca0fc176273f48" {
  description = "Default local route to the subnetwork 10.168.0.0/20."
  dest_range  = "10.168.0.0/20"
  name        = "default-route-98ca0fc176273f48"
  network     = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority    = "0"
  project     = "fixie-frame"
}

resource "google_compute_route" "tfer--default-route-9bf9b352241f0e71" {
  description = "Default local route to the subnetwork 10.172.0.0/20."
  dest_range  = "10.172.0.0/20"
  name        = "default-route-9bf9b352241f0e71"
  network     = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority    = "0"
  project     = "fixie-frame"
}

resource "google_compute_route" "tfer--default-route-af6aacb4b36c84e1" {
  description = "Default local route to the subnetwork 10.138.0.0/20."
  dest_range  = "10.138.0.0/20"
  name        = "default-route-af6aacb4b36c84e1"
  network     = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority    = "0"
  project     = "fixie-frame"
}

resource "google_compute_route" "tfer--default-route-b0edf89dd56f0711" {
  description = "Default local route to the subnetwork 10.132.0.0/20."
  dest_range  = "10.132.0.0/20"
  name        = "default-route-b0edf89dd56f0711"
  network     = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority    = "0"
  project     = "fixie-frame"
}

resource "google_compute_route" "tfer--default-route-b11254adf8070950" {
  description = "Default local route to the subnetwork 10.178.0.0/20."
  dest_range  = "10.178.0.0/20"
  name        = "default-route-b11254adf8070950"
  network     = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority    = "0"
  project     = "fixie-frame"
}

resource "google_compute_route" "tfer--default-route-b1e74498c550807b" {
  description = "Default local route to the subnetwork 10.128.0.0/20."
  dest_range  = "10.128.0.0/20"
  name        = "default-route-b1e74498c550807b"
  network     = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority    = "0"
  project     = "fixie-frame"
}

resource "google_compute_route" "tfer--default-route-b686adf6d777d810" {
  description = "Default local route to the subnetwork 10.198.0.0/20."
  dest_range  = "10.198.0.0/20"
  name        = "default-route-b686adf6d777d810"
  network     = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority    = "0"
  project     = "fixie-frame"
}

resource "google_compute_route" "tfer--default-route-b75e38259e1225af" {
  description = "Default local route to the subnetwork 10.166.0.0/20."
  dest_range  = "10.166.0.0/20"
  name        = "default-route-b75e38259e1225af"
  network     = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority    = "0"
  project     = "fixie-frame"
}

resource "google_compute_route" "tfer--default-route-b9fdab4dd41f6024" {
  description = "Default local route to the subnetwork 10.208.0.0/20."
  dest_range  = "10.208.0.0/20"
  name        = "default-route-b9fdab4dd41f6024"
  network     = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority    = "0"
  project     = "fixie-frame"
}

resource "google_compute_route" "tfer--default-route-ba8ca1d172e5557a" {
  description = "Default local route to the subnetwork 10.152.0.0/20."
  dest_range  = "10.152.0.0/20"
  name        = "default-route-ba8ca1d172e5557a"
  network     = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority    = "0"
  project     = "fixie-frame"
}

resource "google_compute_route" "tfer--default-route-bae72c1502ab3a04" {
  description = "Default local route to the subnetwork 10.196.0.0/20."
  dest_range  = "10.196.0.0/20"
  name        = "default-route-bae72c1502ab3a04"
  network     = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority    = "0"
  project     = "fixie-frame"
}

resource "google_compute_route" "tfer--default-route-bc3dfff824c75a65" {
  description = "Default local route to the subnetwork 10.146.0.0/20."
  dest_range  = "10.146.0.0/20"
  name        = "default-route-bc3dfff824c75a65"
  network     = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority    = "0"
  project     = "fixie-frame"
}

resource "google_compute_route" "tfer--default-route-c036d8a9b7906fe2" {
  description = "Default local route to the subnetwork 10.170.0.0/20."
  dest_range  = "10.170.0.0/20"
  name        = "default-route-c036d8a9b7906fe2"
  network     = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority    = "0"
  project     = "fixie-frame"
}

resource "google_compute_route" "tfer--default-route-c282c5a85f63ddba" {
  description = "Default local route to the subnetwork 10.190.0.0/20."
  dest_range  = "10.190.0.0/20"
  name        = "default-route-c282c5a85f63ddba"
  network     = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority    = "0"
  project     = "fixie-frame"
}

resource "google_compute_route" "tfer--default-route-c2c2e4b4ab64d1a8" {
  description = "Default local route to the subnetwork 10.150.0.0/20."
  dest_range  = "10.150.0.0/20"
  name        = "default-route-c2c2e4b4ab64d1a8"
  network     = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority    = "0"
  project     = "fixie-frame"
}

resource "google_compute_route" "tfer--default-route-c6105eec516188b5" {
  description = "Default local route to the subnetwork 10.194.0.0/20."
  dest_range  = "10.194.0.0/20"
  name        = "default-route-c6105eec516188b5"
  network     = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority    = "0"
  project     = "fixie-frame"
}

resource "google_compute_route" "tfer--default-route-d6e33b9f1bf8b812" {
  description = "Default local route to the subnetwork 10.216.0.0/20."
  dest_range  = "10.216.0.0/20"
  name        = "default-route-d6e33b9f1bf8b812"
  network     = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority    = "0"
  project     = "fixie-frame"
}

resource "google_compute_route" "tfer--default-route-eb1601e83a1d09dc" {
  description = "Default local route to the subnetwork 10.140.0.0/20."
  dest_range  = "10.140.0.0/20"
  name        = "default-route-eb1601e83a1d09dc"
  network     = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority    = "0"
  project     = "fixie-frame"
}

resource "google_compute_route" "tfer--default-route-f831b7ff31808e5b" {
  description = "Default local route to the subnetwork 10.180.0.0/20."
  dest_range  = "10.180.0.0/20"
  name        = "default-route-f831b7ff31808e5b"
  network     = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority    = "0"
  project     = "fixie-frame"
}

resource "google_compute_route" "tfer--default-route-fb6ed9f29f828887" {
  description = "Default local route to the subnetwork 10.220.0.0/20."
  dest_range  = "10.220.0.0/20"
  name        = "default-route-fb6ed9f29f828887"
  network     = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority    = "0"
  project     = "fixie-frame"
}

resource "google_compute_route" "tfer--default-route-fcc6457cf1803fbf" {
  description = "Default local route to the subnetwork 10.154.0.0/20."
  dest_range  = "10.154.0.0/20"
  name        = "default-route-fcc6457cf1803fbf"
  network     = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  priority    = "0"
  project     = "fixie-frame"
}
