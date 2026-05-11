Set-Location "$PSScriptRoot/.."

for($i = 0; $i -le 20000; $i += 1000) {
    Write-Host ">>> Starting benchmark with: $i Bytes Payload" -ForegroundColor Yellow

    "pub const PAYLOAD_SIZE: usize = $i;" | Out-File -FilePath "src/payload.rs" -Encoding utf8

    $env:RUSTFLAGS="-C target-cpu=native"
    cargo run --profile o3 -- -b s3 -w 1000 -i 5000 -s 5 -c 100
}

Write-Host "Benchmarks finished" -ForegroundColor Green