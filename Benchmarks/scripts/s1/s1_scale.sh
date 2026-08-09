#!/bin/bash
cd "$(dirname "$0")/../.."
pwd

export RUSTFLAGS="-C target-cpu=native -C link-arg=-fuse-ld=mold"
CORE=2

cargo build --profile run
./target/run/Benchmarks -b reset

for i in $(seq 0 1 50000); do
    echo -e "\e[33m>>> Starting benchmark: $i Planets\e[0m"
    taskset -c $CORE ./target/run/Benchmarks -b s1 -w 100 -i 50 -s 10 -p $i
done

echo -e "\e[32mBenchmarks finished\e[0m"
