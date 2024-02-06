# Deepgram on-prem service

This directory contains Terraform configs that stand up the Deepgram on-prem
service on GCP. Currently, these configs only include the Instance Template
and Managed Instance Group, and not the other parts of the service, such as:
    * SSL certificate
    * Load balancer config
    * Health checks
and so forth.

The main use of this is to update the contents of the machine image used
by the service. To do so, see the instructions at the top of `main.tf`.

See also: https://www.notion.so/fixieai/Deepgram-On-Prem-Setup-Notes-ceae7940a9a64a7b96ba6e763651ccf0
