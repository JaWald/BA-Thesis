Set-Location "$PSScriptRoot/../.."

"pub const PAYLOAD_SIZE: usize = 1;" | Out-File -FilePath "src/payload.rs" -Encoding utf8
$env:RUSTFLAGS="-C target-cpu=native  -C linker=rust-lld.exe"
cargo run --profile o3 -- -b s3 -w 500 -i 1000 -s 5 -c 50

for($i = 200; $i -le 20000; $i += 200) {
    Write-Host ">>> Starting benchmark with: $i Bytes Payload" -ForegroundColor Yellow

    "pub const PAYLOAD_SIZE: usize = $i;" | Out-File -FilePath "src/payload.rs" -Encoding utf8

    $env:RUSTFLAGS="-C target-cpu=native  -C linker=rust-lld.exe"
    cargo run --profile o3 -- -b s3 -w 500 -i 1000 -s 5 -c 50
}

Write-Host "Benchmarks finished" -ForegroundColor Green