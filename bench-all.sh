#!/usr/bin/env bash

echo "============================================"
echo "Running All JavaScript Linter Benchmarks"
echo "============================================"
echo ""

# Run VSCode benchmarks
echo "Running VSCode benchmarks..."
echo ""
cd bench-vscode
chmod +x bench.sh
./bench.sh
cd ..

echo ""
echo ""

# Run Vue benchmarks
echo "Running Vue Core benchmarks..."
echo ""
cd bench-vue
chmod +x bench.sh
./bench.sh
cd ..

echo ""
echo "============================================"
echo "All benchmarks completed!"
echo "============================================"