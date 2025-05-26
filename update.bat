@echo off

set VERSION=7.13.0
set OPENAPI_PATH=http://localhost:8080/api/openapi.json

echo Downloading OpenAPI specification...
curl -L -o openapi.json %OPENAPI_PATH%

echo Downloading OpenAPI generator...
curl -L -o openapi-generator-cli-%VERSION%.jar https://repo1.maven.org/maven2/org/openapitools/openapi-generator-cli/%VERSION%/openapi-generator-cli-%VERSION%.jar

echo Generating Dart client...
java -jar openapi-generator-cli-%VERSION%.jar generate -i openapi.json -g dart -c open-generator-config.yaml --enable-post-process-file

echo Cleaning up...
del openapi-generator-cli-%VERSION%.jar

echo Updating dependencies...
dart pub get
dart pub upgrade --major-versions

echo Done!