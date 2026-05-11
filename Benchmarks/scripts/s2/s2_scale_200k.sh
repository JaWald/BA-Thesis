#!/bin/bash

cd "$(dirname "$0")/../.." || exit

for i in $(seq 0 500 200000); do
    echo -e "\e[33m>>> Starting benchmark with: $i Bytes Payload\e[0m"
    echo "pub const PAYLOAD_SIZE: usize = $i;" > src/payload.rs
    RUSTFLAGS="-C target-cpu=native -C link-arg=-fuse-ld=mold" cargo run --profile o3 -- -b s2 -w 500 -i 1000 -s 5
done

echo -e "\e[32mBenchmarks finished\e[0m"
