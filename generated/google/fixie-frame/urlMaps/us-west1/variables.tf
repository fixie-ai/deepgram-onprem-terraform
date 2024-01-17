data "terraform_remote_state" "backendServices" {
  backend = "local"

  config = {
    path = "../../../../../generated/google/fixie-frame/backendServices/us-west1/terraform.tfstate"
  }
}
