#!/usr/bin/env bash

VUE_CORE_TEST_DIR="../tmp/vue-core"

echo "============================================"
echo "Vue Core Benchmark - Type-Aware Rules"
echo "============================================"
echo ""

echo "Oxlint vs TypeScript ESLint with type-aware rules"
echo "-------------------------------------------"

OXC="../node_modules/.bin/oxlint -c .oxlintrc.json --type-aware ${VUE_CORE_TEST_DIR}"
ESLINT="../node_modules/.bin/eslint -c eslint.config.mjs ${VUE_CORE_TEST_DIR}"

hyperfine -w 1 -i \
  -n oxc "${OXC}" \
  -n eslint "${ESLINT}"