#!/bin/bash

rm ${PWD}/out -rf
docker run --rm -v "${PWD}:/local" openapitools/openapi-generator-cli generate \
    -i /local/petstore.yaml \
    -g csharp \
    -o /local/out/csharp \
    -c /local/config.yaml \
    -t /local/csharp
sudo chmod o+w ${PWD}/out -R

# Todo
# [x] validatable
# [ ] テンプレート
