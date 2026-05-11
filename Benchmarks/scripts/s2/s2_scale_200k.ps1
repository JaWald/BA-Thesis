Set-Location "$PSScriptRoot/.."

for($i = 0; $i -le 200000; $i += 500) {
    Write-Host ">>> Starting benchmark with: $i Bytes Payload" -ForegroundColor Yellow
    "pub const PAYLOAD_SIZE: usize = $i;" | Out-File -FilePath "src/payload.rs" -Encoding utf8

    $env:RUSTFLAGS = "-C target-cpu=native"
    cargo run --profile o3 -- -b s2 -w 500 -i 1000 -s 5
}

Write-Host "Benchmarks finished" -ForegroundColor Green