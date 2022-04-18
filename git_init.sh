#!/bin/bash
set -x
rm -rf .git
git init
git add .
git commit -m "reset"
git branch -M main
git remote add origin git@github.com:ssst0n3/ctf_dirty-pipe-escape-rw.git
git push -f -u origin main
