#!/usr/bin/env bash

mkdir -p tmp
pushd tmp
[ ! -d "vscode" ] && git clone --depth=1 git@github.com:microsoft/vscode.git
popd

pushd tmp
[ ! -d "vue-core" ] && git clone --depth=1 git@github.com:vuejs/core.git vue-core
popd

pnpm install

rm -rf ./tmp/vscode/.eslintrc.json
rm -rf ./tmp/vscode/**/.eslintrc.json
