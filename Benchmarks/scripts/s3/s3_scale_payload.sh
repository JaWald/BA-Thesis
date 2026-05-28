#!/bin/bash
cd "$(dirname "$0")/../.."

for i in $(seq 0 1000 20000); do
    echo -e "\e[33m>>> Starting benchmark with: $i Bytes Payload\e[0m"

    echo "pub const PAYLOAD_SIZE: usize = $i;" > src/payload.rs

    export RUSTFLAGS="-C target-cpu=native"
    cargo run --profile o3 -- -b s3 -w 1000 -i 5000 -s 5 -c 100
done

echo -e "\e[32mBenchmarks finished\e[0m"