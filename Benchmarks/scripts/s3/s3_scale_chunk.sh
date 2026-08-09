#!/bin/bash
cd "$(dirname "$0")/../.."

for i in $(seq 100 100 1000); do
    echo -e "\e[33m>>> Starting benchmark with: $i Chunk Size\e[0m"

    export RUSTFLAGS="-C target-cpu=native"
    cargo run --profile run -- -b s3 -w 1000 -i 5000 -s 5 -c $i
done

echo -e "\e[32mBenchmarks finished\e[0m"