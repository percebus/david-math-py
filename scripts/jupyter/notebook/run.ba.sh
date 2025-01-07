#!/bin/bash

# I believe that `poetry run` is optional if run under `poetry shell`
uvx --from jupyter-core jupyter notebook ./jupyter
