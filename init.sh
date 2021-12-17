#!/bin/bash

pip3 install -r requirements.txt

echo "Copying custom roamlinks config (with backlinks code)"
cp /datacatalog/plugin_customizations/roamlinks_customized_plugin.py /config/.local/lib/python3.8/site-packages/mkdocs_roamlinks_plugin/plugin.py

# Install mkdocs insiders
# Run the following manually
#sudo apt install -y libcairo2
#pip install git+https://${GH_TOKEN}@github.com/squidfunk/mkdocs-material-insiders.git