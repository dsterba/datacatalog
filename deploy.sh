#!/bin/bash
# Change directory and build html site

#mkdocs build -f mkdocs.insiders.yml
cd /datacatalog
/config/.local/bin/mkdocs build --config-file mkdocs.insiders.yml

# copy files to server
#scp -r site shramapoo:/home/dan/datasets/swag/www/fsb-wiki
cp -r site /www

# change permissions and access
#ssh -t shramapoo 'sudo chown -R 166447:lsio /home/dan/datasets/swag/www/fsb-wiki && sudo chmod -R 775 /home/dan/datasets/swag/www/fsb-wiki'

# remove site directory
rm -rf site
