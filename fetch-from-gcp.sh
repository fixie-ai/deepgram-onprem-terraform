#!/bin/bash

# Fetch resources from GCP using Terraformer.
# This writes the fetched resources to the `generated` directory.
terraformer import google \
    --resources=instances,instanceGroups,instanceGroupManagers,addresses,backendServices,disks,dns,firewall,forwardingRules,globalAddresses,globalForwardingRules,healthChecks,httpHealthChecks,httpsHealthChecks,images,instanceTemplates,networks,nodeGroups,nodeTemplates,project,routers,routes,sslCertificates,sslPolicies,urlMaps,targetHttpProxies,targetHttpsProxies \
    --connect=true \
    --regions=us-west1,us-central1 \
    --projects fixie-frame