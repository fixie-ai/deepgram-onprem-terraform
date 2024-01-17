provider "google" {
  project = "fixie-frame"
}

module "deepgram_onprem" {
  source = "../../../../modules/deepgram-onprem"
}