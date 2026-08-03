#!/bin/bash
cd "$(dirname "$0")/../.."
pwd

export RUSTFLAGS="-C target-cpu=native"
cargo build --profile o3

for i in $(seq 1 1 100000); do
    echo -e "\e[33m>>> Starting benchmark with: $i Planets\e[0m"
    ./target/o3/Benchmarks -b s1 -w 250 -i 500 -s 1 -p $i
done

echo -e "\e[32mBenchmarks finished\e[0m"
