Set-Location "$PSScriptRoot/../.."

for($i = 998-1024+64+1536; $i -le 10000; $i += 64) {
    Write-Host ">>> Starting benchmark with: $i Bytes Payload" -ForegroundColor Yellow
    "pub const PAYLOAD_SIZE: usize = $i;" | Out-File -FilePath "src/payload.rs" -Encoding utf8

    $env:RUSTFLAGS = "-C target-cpu=native -C linker=rust-lld.exe"
    cargo run --profile o3 -- -b s2 -w 500 -i 1000 -s 5
}

Write-Host "Benchmarks finished" -ForegroundColor Green