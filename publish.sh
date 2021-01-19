#!/usr/bin/env bash
rm -rf ./dist
yarn version --new-version $1
yarn build
cp package.json ./dist
cp README.md ./dist
(cd ./dist && yarn publish --access public  --new-version $1)
