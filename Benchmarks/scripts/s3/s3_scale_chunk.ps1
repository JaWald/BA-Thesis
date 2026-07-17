Set-Location "$PSScriptRoot/../.."

"pub const PAYLOAD_SIZE: usize = 0;" | Out-File -FilePath "src/payload.rs" -Encoding utf8

$env:RUSTFLAGS="-C target-cpu=native"
cargo run --profile o3 -- -b s3 -w 200 -i 1000 -s 5 -c 1
for($i = 20; $i -le 1000; $i += 20) {
    Write-Host ">>> Starting benchmark with: $i Chunk Size" -ForegroundColor Yellow

    $env:RUSTFLAGS="-C target-cpu=native"
    cargo run --profile o3 -- -b s3 -w 500 -i 1000 -s 5 -c $i
}

Write-Host "Benchmarks finished" -ForegroundColor Green