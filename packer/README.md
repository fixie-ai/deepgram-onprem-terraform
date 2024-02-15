# Deepgram on-prem image

This directory contains a Packer configuration to generate a custom image for
the Deepgram on-prem service. That service is configured using Terraform in the
`deepgram-onprem/` directory.

To build the image, run:

```bash
packer build build.pkr.hcl
```

This will emit a file called `manifest.json` that contains the image name, like the
following:

```
{
  "builds": [
    {
      "name": "dgonprem-packer-image",
      "builder_type": "googlecompute",
      "build_time": 1707254755,
      "files": null,
      "artifact_id": "deepgram-onprem-1707253541",
      "packer_run_uuid": "b5a76386-82fb-228b-239c-7e0206c2b167",
      "custom_data": null
    }
  ],
  "last_run_uuid": "b5a76386-82fb-228b-239c-7e0206c2b167"
}
```

The `artifact_id` is the name of the image that was created, which can then be plugged
into the Terraform configs to deploy the Deepgram on-prem service.
