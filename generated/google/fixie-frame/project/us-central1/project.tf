resource "google_project" "tfer--fixie-frame" {
  auto_create_network = "true"

  labels = {
    firebase            = "enabled"
    generative-language = "enabled"
  }

  name       = "fixie-frame"
  org_id     = "1064710985697"
  project_id = "fixie-frame"
}
