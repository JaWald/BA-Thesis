#!/bin/bash
cd "$(dirname "$0")/../.."

echo "pub const PAYLOAD_SIZE: usize = 0;" > src/payload.rs
for i in $(seq 2 2 100000); do
    echo -e "\e[33m>>> Starting benchmark with: $i Planets\e[0m"

    RUSTFLAGS="-C target-cpu=native -C link-arg=-fuse-ld=mold" cargo run --profile o3 -- -b s1 -w 500 -i 1000 -s 5 -p $i
done

echo -e "\e[32mBenchmarks finished\e[0m"
