#!/usr/bin/env bash

set -e
set -x

rm -rf public
hugo
cp -a public/en/. docs/blog/
cp -a public/fr/. ../socioresources-fr/docs/blog/
cp -a public/ar/. ../socioresources-ar/docs/blog/
rm -rf public

git add -A
git commit -m "Update site"
git push origin master

unset -e

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
