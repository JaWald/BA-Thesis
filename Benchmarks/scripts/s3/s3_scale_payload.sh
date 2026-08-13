#!/bin/bash
cd "$(dirname "$0")/../.."

export RUSTFLAGS="-C target-cpu=native -C link-arg=-fuse-ld=mold"
CORE=2

for i in $(seq 0 2 10000); do
    echo -e "\e[33m>>> Starting benchmark: $i Bytes Payload\e[0m"

    echo "pub const PAYLOAD_SIZE: usize = $i;" > src/payload.rs
    cargo build --profile o3 || exit 1

    taskset -c $CORE ./target/o3/Benchmarks -b s3 -w 100 -i 50 -s 5 -c 500
    taskset -c $CORE ./target/o3/Benchmarks -b s3 -w 100 -i 50 -s 5 -c 500 -r

    #GLIBC_TUNABLES=glibc.malloc.tcache_count=0 taskset -c $CORE ./target/o3/Benchmarks -b s3 -w 100 -i 50 -s 5 -c 500
    #GLIBC_TUNABLES=glibc.malloc.tcache_count=0 taskset -c $CORE ./target/o3/Benchmarks -b s3 -w 100 -i 50 -s 5 -c 500 -r
done

echo "pub const PAYLOAD_SIZE: usize = 0;" > src/payload.rs
echo -e "\e[32mBenchmarks finished\e[0m"
