Set-Location "$PSScriptRoot/../.."

"pub const PAYLOAD_SIZE: usize = 16000;" | Out-File -FilePath "src/payload.rs" -Encoding utf8

cargo build --profile run
./target/run/Benchmarks -b reset

$env:RUSTFLAGS="-C target-cpu=native"
./target/run/Benchmarks -b s3 -w 50 -i 50 -s 2 -c 1 -r
for($i = 100; $i -le 1000; $i += 100) {
    Write-Host ">>> Starting benchmark with: $i Chunk Size" -ForegroundColor Yellow

    $env:RUSTFLAGS="-C target-cpu=native"
    $p = Start-Process -FilePath "./target/run/Benchmarks" `
        -ArgumentList "-b s3 -w 50 -i 50 -s 2 -c $i -r" `
        -PassThru -NoNewWindow
    $p.ProcessorAffinity = [IntPtr]4   # 4 = 0b100 = Core 2
    $p.WaitForExit()
}

Write-Host "Benchmarks finished" -ForegroundColor Green