#!/usr/bin/env bash

set -e
set -x

rm -rf public
hugo
cp -a public/en/. docs/
cp -a public/fr/. ../socioresources-fr/docs/
cp -a public/ar/. ../socioresources-ar/docs/
rm -rf public

git add -A
git commit -m "Update site"
git push origin master

pushd ../socioresources-fr
git add -A
git commit -m "Update site"
git push origin master
popd

pushd ../socioresources-ar
git add -A
git commit -m "Update site"
git push origin master
popd
