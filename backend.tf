terraform {
 backend "gcs" {
   bucket  = "fixie-ai-terraform-tfstate-bucket"
   prefix  = "terraform/state"
 }
}
