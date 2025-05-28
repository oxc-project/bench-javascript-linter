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

### Macbook Pro M4 Max, 64 GB

```
Benchmark 1: oxc
  Time (mean ± σ):      98.2 ms ±  20.5 ms    [User: 514.3 ms, System: 186.3 ms]
  Range (min … max):    91.4 ms … 208.2 ms    31 runs

  Warning: Ignoring non-zero exit code.
  Warning: Statistical outliers were detected. Consider re-running this benchmark on a quiet system without any interferences from other programs. It might help to use the '--warmup' or '--prepare' options.

Benchmark 2: biome
  Time (mean ± σ):     244.5 ms ±  18.0 ms    [User: 2047.0 ms, System: 392.9 ms]
  Range (min … max):   232.4 ms … 299.9 ms    12 runs

  Warning: Ignoring non-zero exit code.

Summary
  oxc ran
    2.49 ± 0.55 times faster than biome
```

### Macbook Air M3, 24 GB, 8 core (4 performance cores, 4 efficiency cores)

```
Benchmark 1: oxc
  Time (mean ± σ):     150.7 ms ±   2.9 ms    [User: 640.7 ms, System: 152.2 ms]
  Range (min … max):   146.8 ms … 158.8 ms    20 runs

  Warning: Ignoring non-zero exit code.

Benchmark 2: biome
  Time (mean ± σ):     498.8 ms ±   4.1 ms    [User: 2729.6 ms, System: 315.9 ms]
  Range (min … max):   492.7 ms … 507.8 ms    10 runs

  Warning: Ignoring non-zero exit code.

Summary
  oxc ran
    3.31 ± 0.07 times faster than biome
```

## Oxlint vs ESLint v9

### MacBook Pro M2 Max 12 Cores (8 performance and 4 efficiency)

```
Benchmark 1: oxc
  Time (mean ± σ):     499.6 ms ±   9.0 ms    [User: 2485.7 ms, System: 165.2 ms]
  Range (min … max):   489.6 ms … 516.1 ms    10 runs

  Warning: Ignoring non-zero exit code.

Benchmark 2: oxc-single-thread
  Time (mean ± σ):      1.824 s ±  0.035 s    [User: 2.079 s, System: 0.134 s]
  Range (min … max):    1.789 s …  1.903 s    10 runs

  Warning: Ignoring non-zero exit code.

Benchmark 3: eslint
  Time (mean ± σ):     31.025 s ±  0.744 s    [User: 48.279 s, System: 2.224 s]
  Range (min … max):   30.556 s … 33.030 s    10 runs

  Warning: Ignoring non-zero exit code.

Summary
  oxc ran
    3.65 ± 0.10 times faster than oxc-single-thread
   62.10 ± 1.86 times faster than eslint
```

### Macbook Pro M4 Max, 64 GB

```
Benchmark 1: oxc
  Time (mean ± σ):     177.2 ms ±   9.7 ms    [User: 1428.0 ms, System: 125.4 ms]
  Range (min … max):   163.6 ms … 193.0 ms    17 runs

  Warning: Ignoring non-zero exit code.

Benchmark 2: eslint
  Time (mean ± σ):     20.957 s ±  0.377 s    [User: 33.216 s, System: 1.722 s]
  Range (min … max):   20.132 s … 21.376 s    10 runs

  Warning: Ignoring non-zero exit code.

Summary
  oxc ran
  118.25 ± 6.78 times faster than eslint
```

### Macbook Air M3, 24 GB, 8 core (4 performance cores, 4 efficiency cores)

```
Benchmark 1: oxc
  Time (mean ± σ):     477.3 ms ±  12.8 ms    [User: 2370.8 ms, System: 152.6 ms]
  Range (min … max):   451.6 ms … 499.2 ms    10 runs

  Warning: Ignoring non-zero exit code.

Benchmark 2: oxc-single-thread
  Time (mean ± σ):      1.616 s ±  0.013 s    [User: 1.848 s, System: 0.111 s]
  Range (min … max):    1.606 s …  1.642 s    10 runs

  Warning: Ignoring non-zero exit code.

Benchmark 3: eslint
  Time (mean ± σ):     28.682 s ±  0.303 s    [User: 45.572 s, System: 1.748 s]
  Range (min … max):   28.318 s … 29.345 s    10 runs

  Warning: Ignoring non-zero exit code.

Summary
  oxc ran
    3.38 ± 0.09 times faster than oxc-single-thread
   60.09 ± 1.73 times faster than eslint
```

## Run

```bash
./init.sh
./bench.sh
```
