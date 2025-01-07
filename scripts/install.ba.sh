#!/bin/bash

set -e

scripts_path=./scripts

set -x

# pip > pipx
bash ${scripts_path}/pip/upgrade.ba.sh

# pipx > uv
bash ${scripts_path}/pipx/install.ba.sh

# uv > tools
bash ${scripts_path}/uv/tool/install.ba.sh

# dependencies
bash ${scripts_path}/pip/install.ba.sh

# jupyter .venv
# bash ${scripts_path}/ipykernel/install.ba.sh # TODO?

set +x
set +e
