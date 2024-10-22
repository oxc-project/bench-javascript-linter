# Benchmark for Oxc, Biome and ESLint

## Summary

Oxlint is 50x - 100x faster than ESLint depending on the number of CPU cores.

Oxlint is ~2x faster than Biome.

## Setup

See [bench.sh](./bench.sh).

## Oxlint vs Biome

### MacBook Pro M3 Max

```
Benchmark 1: oxc
  Time (mean ± σ):     124.5 ms ±   1.9 ms    [User: 628.0 ms, System: 287.3 ms]
  Range (min … max):   122.4 ms … 130.1 ms    23 runs

  Warning: Ignoring non-zero exit code.

Benchmark 2: biome
  Time (mean ± σ):     297.4 ms ±   2.6 ms    [User: 2259.5 ms, System: 724.6 ms]
  Range (min … max):   292.0 ms … 301.2 ms    10 runs

  Warning: Ignoring non-zero exit code.

Summary
  oxc ran
    2.39 ± 0.04 times faster than biome
```

## Oxlint vs ESLint v9

### Mac m1 10 Cores (8 performance and 2 efficiency)

```
Benchmark 1: oxc
  Time (mean ± σ):     615.3 ms ±  30.4 ms    [User: 3613.8 ms, System: 195.5 ms]
  Range (min … max):   583.7 ms … 677.1 ms    10 runs

  Warning: Ignoring non-zero exit code.

Benchmark 2: eslint
  Time (mean ± σ):     33.481 s ±  0.453 s    [User: 51.682 s, System: 2.329 s]
  Range (min … max):   32.861 s … 34.085 s    10 runs

  Warning: Ignoring non-zero exit code.

Summary
  oxc ran
   54.42 ± 2.78 times faster than eslint
```

### 13th Gen Intel(R) i9-13980HX 24-cores (8p / 16e)

```
Benchmark 1: oxc
  Time (mean ± σ):     458.9 ms ±   5.4 ms    [User: 5493.4 ms, System: 182.0 ms]
  Range (min … max):   449.5 ms … 465.2 ms    10 runs

  Warning: Ignoring non-zero exit code.

Benchmark 2: eslint
  Time (mean ± σ):     32.092 s ±  0.567 s    [User: 47.377 s, System: 2.207 s]
  Range (min … max):   30.967 s … 32.752 s    10 runs

  Warning: Ignoring non-zero exit code.

Summary
  oxc ran
   69.93 ± 1.49 times faster than eslint
```
## Run

```bash
./init.sh
./bench.sh
```
