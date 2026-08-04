#!/bin/bash
cd "$(dirname "$0")/../.."

export RUSTFLAGS="-C target-cpu=native -C link-arg=-fuse-ld=mold"
#cargo build --profile o3
#./target/o3/Benchmarks -b reset
CORE=2

for j in $(seq 9000 1000 25000); do
    echo "pub const PAYLOAD_SIZE: usize = $j;" > src/payload.rs
    cargo build --profile o3

    echo -e "\e[33m>>> Payload: $j Bytes\e[0m"
    for k in $(seq 0 250 3000); do
        echo -e "\e[33m    Chunk: $k\e[0m"
        taskset -c $CORE ./target/o3/Benchmarks -b s3 -w 50 -i 50 -s 1 -c $k -r
    done
done

printf "\e[32mBenchmarks finished."

