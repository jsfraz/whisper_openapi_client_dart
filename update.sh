#!/bin/sh

VERSION=7.6.0
OPENAPI_PATH=http://localhost:8080/api/openapi.json

# Downlaod generator
wget https://repo1.maven.org/maven2/org/openapitools/openapi-generator-cli/7.6.0/openapi-generator-cli-$VERSION.jar
# Generate
java -jar openapi-generator-cli-$VERSION.jar generate -i $OPENAPI_PATH -g dart -c open-generator-config.yaml --enable-post-process-file
# Remove generator
rm openapi-generator-cli-$VERSION.jar
# Update dependencies
dart pub upgrade --major-versions