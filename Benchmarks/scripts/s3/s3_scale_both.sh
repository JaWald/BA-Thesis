#!/bin/bash
cd "$(dirname "$0")/../.."

export RUSTFLAGS="-C target-cpu=native -C link-arg=-fuse-ld=mold"
CORE=2

cargo build --profile o3
./target/o3/Benchmarks -b reset

for j in $(seq 980 1 1035); do
    echo -e "\e[34m>>> Payload: $j Bytes\e[0m"
    echo "pub const PAYLOAD_SIZE: usize = $j;" > src/payload.rs
    cargo build --profile o3

	#taskset -c $CORE ./target/o3/Benchmarks -b s3 -w 100 -i 50 -s 5 -c 1
	GLIBC_TUNABLES=glibc.malloc.tcache_count=0 taskset -c $CORE ./target/o3/Benchmarks -b s3 -w 100 -i 50 -s 5 -c 1

        echo -e "\e[33m    reuse | chunk $k\e[0m"
        #taskset -c $CORE ./target/o3/Benchmarks -b s3 -w 100 -i 50 -s 5 -c 1 -r
        GLIBC_TUNABLES=glibc.malloc.tcache_count=0 taskset -c $CORE ./target/o3/Benchmarks -b s3 -w 100 -i 50 -s 5 -c 1 -r

    for k in $(seq 20 20 1000); do
        echo -e "\e[33m    drop  | chunk $k\e[0m"
        #taskset -c $CORE ./target/o3/Benchmarks -b s3 -w 100 -i 50 -s 5 -c $k
	GLIBC_TUNABLES=glibc.malloc.tcache_count=0 taskset -c $CORE ./target/o3/Benchmarks -b s3 -w 100 -i 50 -s 5 -c $k

        echo -e "\e[33m    reuse | chunk $k\e[0m"
        #taskset -c $CORE ./target/o3/Benchmarks -b s3 -w 100 -i 50 -s 5 -c $k -r
        GLIBC_TUNABLES=glibc.malloc.tcache_count=0 taskset -c $CORE ./target/o3/Benchmarks -b s3 -w 100 -i 50 -s 5 -c $k -r
    done
done

printf "\e[32mBenchmarks finished."
