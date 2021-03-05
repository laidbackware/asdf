#!/bin/bash

set -euo pipefail

DEBUGX=${DEBUGX:-}
[[ -z $DEBUGX ]] || set -x

trap 'set +x' EXIT

script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

docker run --rm --volume ${script_dir}/../:/workspace \
    --env DEBUGX=$DEBUGX \
    asdf-debug:v1 \
    /workspace/docker-test/test.sh

echo "Exit code: $?"