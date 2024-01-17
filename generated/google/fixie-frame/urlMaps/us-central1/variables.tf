data "terraform_remote_state" "backendServices" {
  backend = "local"

  config = {
    path = "../../../../../generated/google/fixie-frame/backendServices/us-central1/terraform.tfstate"
  }
}
