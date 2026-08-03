#!/bin/bash
cd "$(dirname "$0")/../.."
pwd

export RUSTFLAGS="-C target-cpu=native -C link-arg=-fuse-ld=mold"
CORE=2

cargo build --profile o3
./target/o3/Benchmarks -b reset

for i in $(seq 20000 100 50000); do
    echo -e "\e[33m>>> Starting benchmark with: $i Planets\e[0m"
    taskset -c $CORE ./target/o3/Benchmarks -b s1 -w 100 -i 100 -s 1 -p $i
done

echo -e "\e[32mBenchmarks finished\e[0m"
