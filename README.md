# Benchmark for Oxc, Biome and ESLint

## Summary

Oxlint is 50x - 100x faster than ESLint depending on the number of CPU cores.

Oxlint is ~2x faster than Biome.

## Setup

See [bench.sh](./bench.sh).

## Oxlint vs Biome

### MacBook Pro M2 Max

```
Benchmark 1: oxc
  Time (mean ± σ):     138.6 ms ±   2.1 ms    [User: 673.9 ms, System: 163.2 ms]
  Range (min … max):   133.9 ms … 143.2 ms    20 runs

  Warning: Ignoring non-zero exit code.

Benchmark 2: biome
  Time (mean ± σ):     377.2 ms ±   6.3 ms    [User: 2827.2 ms, System: 340.6 ms]
  Range (min … max):   372.0 ms … 393.9 ms    10 runs

  Warning: Ignoring non-zero exit code.

Summary
  oxc ran
    2.72 ± 0.06 times faster than biome
```

## Oxlint vs ESLint v9

### MacBook Pro M2 Max 12 Cores (8 performance and 4 efficiency)

```
Benchmark 1: oxc
  Time (mean ± σ):     515.3 ms ±  10.6 ms    [User: 2482.4 ms, System: 178.3 ms]
  Range (min … max):   495.4 ms … 527.7 ms    10 runs

  Warning: Ignoring non-zero exit code.

Benchmark 2: eslint
  Time (mean ± σ):     32.700 s ±  0.411 s    [User: 49.685 s, System: 2.872 s]
  Range (min … max):   32.073 s … 33.470 s    10 runs

  Warning: Ignoring non-zero exit code.

Summary
  oxc ran
   63.46 ± 1.53 times faster than eslint
```

## Run

```bash
./init.sh
./bench.sh
```
