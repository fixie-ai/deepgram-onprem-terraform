# terraform

This repo contains terraform configurations for Fixie infrastructure.

## Pulling from GCP

terraformer import google --resources=instances,instanceGroups,instanceGroupManagers,addresses,backendServices,disks,dns,firewall,forwardingRules,globalAddresses,globalForwardingRules,healthChecks,httpHealthChecks,httpsHealthChecks,images,instanceTemplates,networks,nodeGroups,nodeTemplates,project,routers,routes,sslCertificates,sslPolicies,urlMaps --connect=true --regions=us-west1,us-central1 --projects fixie-frame
