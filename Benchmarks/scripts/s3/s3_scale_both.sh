#!/bin/bash
cd "$(dirname "$0")/../.."

export RUSTFLAGS="-C target-cpu=native -C link-arg=-fuse-ld=mold"
CORE=2

PAYLOADS="100 1000 4000 8000 10000 12000 16000 20000"

cargo build --profile o3
./target/o3/Benchmarks -b reset

for j in $PAYLOADS; do
    echo -e "\e[34m>>> Payload: $j Bytes\e[0m"
    echo "pub const PAYLOAD_SIZE: usize = $j;" > src/payload.rs
    cargo build --profile o3

    echo -e "\e[33m    drop  | chunk 1\e[0m"
    taskset -c $CORE ./target/o3/Benchmarks -b s3 -w 100 -i 50 -s 5 -c 1
    echo -e "\e[33m    reuse | chunk 1\e[0m"
    taskset -c $CORE ./target/o3/Benchmarks -b s3 -w 100 -i 50 -s 5 -c 1 -r

    for k in $(seq 25 25 1000); do
        echo -e "\e[33m    drop  | chunk $k\e[0m"
        taskset -c $CORE ./target/o3/Benchmarks -b s3 -w 100 -i 50 -s 5 -c $k

        echo -e "\e[33m    reuse | chunk $k\e[0m"
        taskset -c $CORE ./target/o3/Benchmarks -b s3 -w 100 -i 50 -s 5 -c $k -r
    done
done

printf "\e[32mBenchmarks finished."
