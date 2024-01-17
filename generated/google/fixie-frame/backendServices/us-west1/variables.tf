data "terraform_remote_state" "healthChecks" {
  backend = "local"

  config = {
    path = "../../../../../generated/google/fixie-frame/healthChecks/us-west1/terraform.tfstate"
  }
}

data "terraform_remote_state" "instanceGroupManagers" {
  backend = "local"

  config = {
    path = "../../../../../generated/google/fixie-frame/instanceGroupManagers/us-west1/terraform.tfstate"
  }
}
