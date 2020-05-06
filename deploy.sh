#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

git init
git add -A
git commit -m 'deploy portfolio'

git push -f https://github.com/nzml906/vue-crud.git master:gh-pages

cd -