#!/bin/sh
wget https://repo1.maven.org/maven2/org/openapitools/openapi-generator-cli/7.6.0/openapi-generator-cli-7.6.0.jar
java -jar openapi-generator-cli-7.6.0.jar generate -i ../whisper-server/openapi.json -g dart -c open-generator-config.yaml --enable-post-process-file
rm openapi-generator-cli-7.6.0.jar