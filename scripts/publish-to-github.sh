#!/bin/bash
set -ev
git clone https://${GH_REF} .cmdb_pkgs
cd .cmdb_pkgs
git checkout master
cd ../
mv .cmdb_pkgs/.git/ ./public/
cd ./public
git config user.name  "xiexianbin"
git config user.email "me@xiexianbin.cn" 
# add commit timestamp
git add .
git commit -m "Travis CI Auto Builder at `date +"%Y-%m-%d %H:%M"`"
git push --force --quiet "https://${Travis_gh_token}@${GH_REF}" master:master
