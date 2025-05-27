#!/usr/bin/env bash

TEST_DIR="./tmp/vscode/src"

# Compare to Biome with only 1 rule enabled.

OXC="./node_modules/.bin/oxlint -A all -D debugger ${TEST_DIR}"
BIOME="./node_modules/.bin/biome lint --only=suspicious/noDebugger ${TEST_DIR}"

# hyperfine -w 1 -i \
#   -n oxc "${OXC}" \
#   -n biome "${BIOME}"

# Compare to eslint with a set of js and ts rules.

OXC="./node_modules/.bin/oxlint -c .oxlintrc.json ${TEST_DIR}"
ESLINT="./node_modules/.bin/eslint -c eslint.config.mjs ${TEST_DIR}"

hyperfine -w 1 -i \
  -n oxc "${OXC}" \
  -n eslint "${ESLINT}"
