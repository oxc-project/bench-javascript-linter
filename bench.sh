#!/usr/bin/env bash

TEST_DIR="./tmp/vscode/src"

OXC="./node_modules/.bin/oxlint ${TEST_DIR}"

ESLINT="./node_modules/.bin/eslint -c eslint.config.mjs ${TEST_DIR}"

echo ${OXC}
echo ${ESLINT}

hyperfine -w 5 -i \
  -n oxc "${OXC}" \
  -n eslint "${ESLINT}"
