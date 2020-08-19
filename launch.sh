#!/bin/bash

# jupyterlab install plugins
jupyter serverextension enable --py jupyterlab --sys-prefix
jupyter labextension install @ryantam626/jupyterlab_code_formatter
pip install jupyterlab_code_formatter

# pip plugins
pip install black isort

mkdir -p root
cd root

export JUPYTER_CONFIG_DIR=/app
jupyter lab --port=${PORT}
