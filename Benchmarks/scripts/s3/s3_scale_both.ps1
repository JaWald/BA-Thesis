Set-Location "$PSScriptRoot/../.."

$env:RUSTFLAGS = "-C target-cpu=native -C linker=rust-lld.exe"

$sw = [Diagnostics.Stopwatch]::StartNew()

for ($j = 0; $j -le 20000; $j += 2500) {
    Write-Host ">>> Payload: $j Bytes" -ForegroundColor Yellow
    "pub const PAYLOAD_SIZE: usize = $j;" | Out-File -FilePath "src/payload.rs" -Encoding utf8

    for ($k = 0; $k -le 1000; $k += 125) {
        Write-Host "    Chunk: $k" -ForegroundColor DarkYellow
        cargo run --profile o3 -- -b s3 -w 1000 -i 2000 -s 5 -c $k
    }
}

$sw.Stop()
$h = $sw.Elapsed.TotalHours

Write-Host ("Benchmarks finished in {0:N2} h" -f $h) -ForegroundColor Green