data "terraform_remote_state" "healthChecks" {
  backend = "local"

  config = {
    path = "../../../../../generated/google/fixie-frame/healthChecks/us-central1/terraform.tfstate"
  }
}

data "terraform_remote_state" "instanceGroupManagers" {
  backend = "local"

  config = {
    path = "../../../../../generated/google/fixie-frame/instanceGroupManagers/us-central1/terraform.tfstate"
  }
}
