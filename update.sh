#!/bin/sh

VERSION=7.21.0
OPENAPI_PATH=http://localhost:8080/api/openapi.json

# Download OpenaAPI spec
wget $OPENAPI_PATH -O openapi.json
# Download generator
wget https://repo1.maven.org/maven2/org/openapitools/openapi-generator-cli/$VERSION/openapi-generator-cli-$VERSION.jar
# Generate
java -jar openapi-generator-cli-$VERSION.jar generate -i openapi.json -g dart -c open-generator-config.yaml --enable-post-process-file
# Remove generator and spec
rm openapi-generator-cli-$VERSION.jar openapi.json
# Update dependencies
dart pub get
dart pub upgrade --major-versions