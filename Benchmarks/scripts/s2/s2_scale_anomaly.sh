#!/bin/bash

cd "$(dirname "$0")/../.." || exit

for ((i=995; i<=20500; i+=1024)); do
    for ((j=i; j<=i+7; j+=1)); do
        echo -e "\e[33m>>> Starting benchmark with: $j Bytes Payload\e[0m"
        echo "pub const PAYLOAD_SIZE: usize = $j;" > src/payload.rs

        RUSTFLAGS="-C target-cpu=native" cargo run --profile o3 -- -b s2 -w 500 -i 1000 -s 5
    done
done

echo -e "\e[32mBenchmarks finished\e[0m"