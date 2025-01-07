#!/bin/bash

set -e

scripts_path=./scripts

set -x

bash ${scripts_path}/pip/upgrade.ba.sh
bash ${scripts_path}/pipx/install.ba.sh
bash ${scripts_path}/ipykernel/install.ba.sh
bash ${scripts_path}/uv/sync.ba.sh

set +x
set +e
