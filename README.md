# terraform

This repo contains Terraform configurations for Fixie infrastructure.
See the various README files in subdirectories for more information.

## Pulling resources from GCP

You can use the
[`terraformer`](https://github.com/GoogleCloudPlatform/terraformer/tree/master) tool to pull resources from GCP into Terraform configs. These are generally *not* the configs you will want to directly
use in this tree (since they tend to be over-broad and not well-organized),
but they can be helpful in mapping what you see in the GCP console to
Terraform-ese.

To do this, run the script `./fetch-from-gcp.sh` which will dump all of the
resources from GCP in Terraform format into the `generated` directory.
