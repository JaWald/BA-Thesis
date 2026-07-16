Set-Location "$PSScriptRoot/../.."

for($i = 100; $i -le 1000; $i += 100) {
    Write-Host ">>> Starting benchmark with: $i Chunk Size" -ForegroundColor Yellow

    $env:RUSTFLAGS="-C target-cpu=native"
    cargo run --profile o3 -- -b s3 -w 200 -i 1000 -s 3 -c $i
}

Write-Host "Benchmarks finished" -ForegroundColor Green