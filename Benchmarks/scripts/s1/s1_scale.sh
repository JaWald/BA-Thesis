#!/bin/bash
cd "$(dirname "$0")/.."

for i in $(seq 100 1000 10000); do
    echo -e "\e[33m>>> Starting benchmark with: $i Planets\e[0m"

    export RUSTFLAGS="-C target-cpu=native" cargo run --profile o3 -- -b s1 -w 1000 -i 5000 -s 1 -p $i -d
done

echo -e "\e[32mBenchmarks finished\e[0m"
