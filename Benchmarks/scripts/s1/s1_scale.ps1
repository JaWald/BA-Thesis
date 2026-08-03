Set-Location "$PSScriptRoot/../.."

$env:RUSTFLAGS="-C target-cpu=native"
cargo build --profile o3
./target/o3/Benchmarks -b reset

"pub const PAYLOAD_SIZE: usize = 0;" | Out-File -FilePath "src/payload.rs" -Encoding utf8
for($i = 1000; $i -le 50000; $i += 1000) {
    Write-Host ">>> Starting benchmark with: $i Planets" -ForegroundColor Yellow

    $p = Start-Process -FilePath "./target/o3/Benchmarks" `
        -ArgumentList "-b s1 -w 1000 -i 2000 -s 10 -p $i" `
        -PassThru -NoNewWindow
    $p.ProcessorAffinity = [IntPtr]4   # 4 = 0b100 = Core 2
    $p.WaitForExit()
}

Write-Host "Benchmarks finished" -ForegroundColor Green