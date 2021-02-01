#!/bin/bash

set -eux

if [ "${#}" -ne 1 ]; then
	>&2 echo "Usage: ./${0} <API_spec_file>"
	exit 1
fi

input_spec="${1}"

# We can use the batch mode and move all options to config.json
docker run --workdir "${PWD}" --rm -v "${PWD}:${PWD}" openapitools/openapi-generator-cli generate \
    --skip-validate-spec \
    --input-spec "${input_spec}" \
    --config config.json \
    --generator-name go \
    --package-name client \
    --output openapi/client

# isGoSubmodule config doesn't seem to work?
# I don't want a submodule, just a regular package...
sudo rm openapi/client/go.{mod,sum}
