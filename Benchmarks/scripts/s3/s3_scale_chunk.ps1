Set-Location "$PSScriptRoot/../.."

for($i = 100; $i -le 1000; $i += 100) {
    Write-Host ">>> Starting benchmark with: $i Chunk Size" -ForegroundColor Yellow

    $env:RUSTFLAGS="-C target-cpu=native"
    cargo run --profile o3 -- -b s3 -w 1000 -i 5000 -s 5 -c $i
}

Write-Host "Benchmarks finished" -ForegroundColor Green