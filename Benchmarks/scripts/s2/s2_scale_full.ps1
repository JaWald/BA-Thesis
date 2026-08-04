Set-Location "$PSScriptRoot/../.."
$env:RUSTFLAGS = "-C target-cpu=native -C linker=rust-lld.exe"

cargo build --profile o3
./target/o3/Benchmarks -b reset

for($i = 0; $i -le 20000; $i += 1000) {
    Write-Host ">>> Starting benchmark: $i Bytes Payload" -ForegroundColor Yellow
    "pub const PAYLOAD_SIZE: usize = $i;" | Out-File -FilePath "src/payload.rs" -Encoding utf8

    cargo build --profile o3
    $p = Start-Process -FilePath "./target/o3/Benchmarks.exe" `
        -ArgumentList "-b s2 -w 200 -i 100 -s 5" -PassThru -NoNewWindow
    $p.ProcessorAffinity = [IntPtr]4      # bitmask: core 2 = 2^2 = 4
    $p.WaitForExit()
}

"pub const PAYLOAD_SIZE: usize = 0;" | Out-File -FilePath "src/payload.rs" -Encoding utf8
Write-Host "Benchmarks finished" -ForegroundColor Green