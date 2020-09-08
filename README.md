# Sample usage of the balena CLI `--registry-secrets` option with GCR

Sample balena CLI [registry
secrets](https://www.balena.io/docs/learn/deploy/deployment/#private-base-images)
usage for private base images hosted with the [Google Container
Registry](https://cloud.google.com/container-registry/) service.

* Replace the contents of the `password` field in the `sample_secrets.yml` file
  with the contents of your own
  [keyfile.json](https://cloud.google.com/container-registry/docs/advanced-authentication)
  file. **Note the escaping of line breaks in the sample file.** (By the way,
  the "private key id" and "private key" fields have been modified in that file:
  they are not real values, just placeholder values.)

* The `'eu.gcr.io'` value must match between the `Dockerfile` "FROM" line and
  the key entry in the `sample_secrets.yml` file.

With those in place, some sample [balena
CLI](https://github.com/balena-io/balena-cli) commands are:

```bash
git clone https://github.com/balena-io-playground/sample-gcr-registry-secrets.git

cd sample-gcr-registry-secrets

DEBUG=1 balena push test-project --registry-secrets sample_secrets.yml

DEBUG=1 balena deploy test-project --build --logs --registry-secrets sample_secrets.yml

DEBUG=1 balena build --deviceType raspberrypi3 --arch armv7hf --logs --registry-secrets sample_secrets.yml
```

References:
* https://cloud.google.com/container-registry/docs/advanced-authentication
* https://www.balena.io/docs/learn/deploy/deployment/#private-base-images
* https://www.balena.io/docs/reference/cli/
* `balena help push`
* `balena help deploy`
* `balena help build`
