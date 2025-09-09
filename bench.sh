#!/usr/bin/env bash

VSCODE_TEST_DIR="./tmp/vscode/src"
VUE_CORE_TEST_DIR="./tmp/vue-core"

# Compare to Biome with only 1 rule enabled.

OXC="./node_modules/.bin/oxlint -A all -D debugger ${VSCODE_TEST_DIR}"
BIOME="./node_modules/.bin/biome lint --only=suspicious/noDebugger ${VSCODE_TEST_DIR}"

hyperfine -w 1 -i \
  -n oxc "${OXC}" \
  -n biome "${BIOME}"

# Compare to eslint with a set of js and ts rules.

OXC="./node_modules/.bin/oxlint -c .oxlintrc.json ${VSCODE_TEST_DIR}"
ESLINT="./node_modules/.bin/eslint -c eslint.config.mjs ${VSCODE_TEST_DIR}"

hyperfine -w 1 -i \
  -n oxc "${OXC}" \
  -n oxc-single-thread "${OXC} --threads=1" \
  -n eslint "${ESLINT}"

# Compare to typescript eslint with type-aware rules.

OXC="./node_modules/.bin/oxlint -c .oxlintrc-type-aware-vue-core.json --type-aware ${VUE_CORE_TEST_DIR}"
ESLINT="./node_modules/.bin/eslint -c eslint-type-aware-vue-core.config.mjs ${VUE_CORE_TEST_DIR}"

hyperfine -w 1 -i \
  -n oxc "${OXC}" \
  -n eslint "${ESLINT}"
