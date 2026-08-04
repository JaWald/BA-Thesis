#!/bin/bash
cd "$(dirname "$0")/../.."

export RUSTFLAGS="-C target-cpu=native  -C link-arg=-fuse-ld=mold"
CORE=2

cargo build --profile o3
./target/o3/Benchmarks -b reset

for i in $(seq 0 1 32768); do
    echo -e "\e[33m>>> Benchmark: $i Bytes Payload\e[0m"
    echo "pub const PAYLOAD_SIZE: usize = $i;" > src/payload.rs

    cargo build --profile o3 || exit 1
    taskset -c $CORE ./target/o3/Benchmarks -b s2 -w 200 -i 200 -s 5
done

echo "pub const PAYLOAD_SIZE: usize = 0;" > src/payload.rs
echo -e "\e[32mBenchmarks finished\e[0m"
