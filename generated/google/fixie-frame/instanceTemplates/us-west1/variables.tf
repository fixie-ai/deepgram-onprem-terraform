data "terraform_remote_state" "networks" {
  backend = "local"

  config = {
    path = "../../../../../generated/google/fixie-frame/networks/us-west1/terraform.tfstate"
  }
}
