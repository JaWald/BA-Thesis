Set-Location "$PSScriptRoot/../.."

for($i = 995; $i -le 20500; $i += 1024) {
    for($j = $i; $j -le $i+7; $j += 1) {
        Write-Host ">>> Starting benchmark with: $j Bytes Payload" -ForegroundColor Yellow
        "pub const PAYLOAD_SIZE: usize = $j;" | Out-File -FilePath "src/payload.rs" -Encoding utf8

        $env:RUSTFLAGS = "-C target-cpu=native"
        cargo run --profile o3 -- -b s2 -w 500 -i 1000 -s 5
        }
}

Write-Host "Benchmarks finished" -ForegroundColor Green