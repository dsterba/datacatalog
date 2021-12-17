#!/bin/bash
# Change directory and build html site

#mkdocs build -f mkdocs.insiders.yml
cd /datacatalog
/config/.local/bin/mkdocs serve --config-file mkdocs.insiders.yml -a 0.0.0.0:8000
