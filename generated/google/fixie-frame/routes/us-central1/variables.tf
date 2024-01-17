data "terraform_remote_state" "networks" {
  backend = "local"

  config = {
    path = "../../../../../generated/google/fixie-frame/networks/us-central1/terraform.tfstate"
  }
}
