Set-Location "$PSScriptRoot/../.."

"pub const PAYLOAD_SIZE: usize = 0;" | Out-File -FilePath "src/payload.rs" -Encoding utf8
for($i = 1; $i -le 100001; $i += 2000) {
    Write-Host ">>> Starting benchmark with: $i Planets" -ForegroundColor Yellow

    $env:RUSTFLAGS="-C target-cpu=native"
    cargo run --profile o3 -- -b s1 -w 500 -i 1000 -s 5 -p $i
}

Write-Host "Benchmarks finished" -ForegroundColor Green