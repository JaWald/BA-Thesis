#!/bin/bash
cd "$(dirname "$0")/../.."

export RUSTFLAGS="-C target-cpu=native -C link-arg=-fuse-ld=mold"
CORE=2

start=$(date +%s)
for j in $(seq 0 1000 25000); do
    echo "pub const PAYLOAD_SIZE: usize = $j;" > src/payload.rs
    cargo build --profile o3

    echo -e "\e[33m>>> Payload: $j Bytes\e[0m"
    for k in $(seq 0 25 1000); do
        echo -e "\e[33m    Chunk: $k\e[0m"
        taskset -c $CORE ./target/o3/Benchmarks -b s3 -w 500 -i 1000 -s 1 -c $k
    done
done

total=$(( $(date +%s) - start ))
printf "\e[32mBenchmarks finished in %02d:%02d:%02d\e[0m\n" \
       $((total/3600)) $(((total%3600)/60)) $((total%60))
