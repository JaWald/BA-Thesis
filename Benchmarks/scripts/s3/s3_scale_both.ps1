Set-Location "$PSScriptRoot/../.."

$env:RUSTFLAGS = "-C target-cpu=native -C linker=rust-lld.exe"
CORE=2
cargo build --profile o3
./target/o3/Benchmarks -b reset

for ($j = 0; $j -le 25000; $j += 500) {
    Write-Host ">>> Payload: $j Bytes" -ForegroundColor Yellow
    "pub const PAYLOAD_SIZE: usize = $j;" | Out-File -FilePath "src/payload.rs" -Encoding utf8
    cargo build --profile o3

    for ($k = 0; $k -le 3000; $k += 100) {
        Write-Host "    Chunk: $k" -ForegroundColor DarkYellow
        ./target/o3/Benchmarks -b s3 -w 50 -i 50 -s 1 -c $k
    }
}

Write-Host "Benchmarks finished" -ForegroundColor Green