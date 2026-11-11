#!/bin/sh
# Regenerates the Dart client from a checked-in OpenAPI spec, deterministically.
# Usage: ./scripts/regen.sh [spec-path]   (default: openapi.json)
set -eu

SPEC="${1:-openapi.json}"
VERSION=7.22.0
JAR="${TMPDIR:-/tmp}/openapi-generator-cli-$VERSION.jar"

if [ ! -f "$JAR" ]; then
  curl -sSL -o "$JAR" "https://repo1.maven.org/maven2/org/openapitools/openapi-generator-cli/$VERSION/openapi-generator-cli-$VERSION.jar"
fi

java -jar "$JAR" generate -i "$SPEC" -g dart -c open-generator-config.yaml -o . --enable-post-process-file

# The generator does not delete files for removed operations. Anything under lib/
# or doc/ that it no longer produces is stale, except hand-written companions.
git ls-files 'lib/**' 'doc/*' | while read -r f; do
  case "$f" in
    lib/media_download.dart) continue ;;
  esac
  grep -qxF "$f" .openapi-generator/FILES || rm -f "$f"
done
