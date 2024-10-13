#!/bin/bash

scripts_path=./scripts
bash ${scripts_path}/venv/setup.ba.sh
bash ${scripts_path}/pip/upgrade.ba.sh
bash ${scripts_path}/pipx/install.ba.sh
poetry shell
