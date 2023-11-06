#!/bin/bash

# Download the spec file from the given URL and save it to the given path.
# If the file already exists, it will be overwritten.
# Usage: download_spec <url> <path>

url="https://raw.githubusercontent.com/microsoftgraph/msgraph-metadata/master/openapi/v1.0/openapi.yaml"
path="microsoft_graph.yml"

# Download the spec file
curl -s "$url" >"$path"
