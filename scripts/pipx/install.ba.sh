#!/bin/bash

set -e
set -v

cwd=$(pwd)
echo "[C]urrent [W]orking [D]irectory: ${cwd}"

cat ${cwd}/requirements.pipx.txt | xargs -n 1 pipx install

set +v
set +e
