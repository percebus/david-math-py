#!/bin/bash

set -e
set -x

uv pip compile requirements.in \
   --universal \
   --output-file requirements.in.txt

uv pip compile pyproject.toml \
   --universal \
   --all-extras \
   --output-file requirements.all.txt

set +x
set +e
