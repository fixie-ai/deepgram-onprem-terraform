data "terraform_remote_state" "instanceTemplates" {
  backend = "local"

  config = {
    path = "../../../../../generated/google/fixie-frame/instanceTemplates/us-west1/terraform.tfstate"
  }
}
