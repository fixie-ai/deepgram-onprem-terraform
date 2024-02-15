# Deepgram on-prem service

This directory contains Terraform configs that stand up a Deepgram on-prem
service on GCP as a Managed Instance Group. Currently, these configs only
include the Instance Template and Managed Instance Group, and not the other
parts of the service, such as:
    * SSL certificate
    * Load balancer config
    * Health checks
and so forth.

The main use of this is to update the contents of the machine image used
by the service. To do so, see the instructions at the top of `main.tf`.

