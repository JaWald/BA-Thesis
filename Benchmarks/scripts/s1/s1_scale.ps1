Set-Location "$PSScriptRoot/../.."

for($i = 100; $i -le 10000; $i += 100) {
    Write-Host ">>> Starting benchmark with: $i Planets" -ForegroundColor Yellow

    $env:RUSTFLAGS="-C target-cpu=native"
    cargo run --profile o3 -- -b s1 -w 500 -i 1000 -s 5 -p $i
}

Write-Host "Benchmarks finished" -ForegroundColor Green