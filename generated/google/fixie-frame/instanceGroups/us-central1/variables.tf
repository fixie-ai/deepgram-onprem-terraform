data "terraform_remote_state" "instanceTemplates" {
  backend = "local"

  config = {
    path = "../../../../../generated/google/fixie-frame/instanceTemplates/us-central1/terraform.tfstate"
  }
}
