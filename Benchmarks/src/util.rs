use std::fs;
use std::io::Write;
use std::fs::OpenOptions;

pub fn print_summary(scenario: &str, time_pc: Vec<u128>, time_aos: Vec<u128>, time_soa: Vec<u128>, time_bevy: Vec<u128>) {
    let mut pc = 0;
    let mut aos = 0;
    let mut soa = 0;
    let mut bevy = 0;

    for i in 0..time_pc.len() {
        pc += time_pc[i];
        aos += time_aos[i];
        soa += time_soa[i];
        bevy += time_bevy[i];
    }

    println!("-------- \x1b[0;32m{:?}\x1b[0m --------", scenario.to_string());
    println!("      \x1b[0;33mPC\x1b[0m: {:>6.2} s", (pc as f64) / 1000000000.0);
    println!("     \x1b[0;33mAoS\x1b[0m: {:>6.2} s", (aos as f64) / 1000000000.0);
    println!("     \x1b[0;33mSoA\x1b[0m: {:>6.2} s", (soa as f64) / 1000000000.0);
    println!("    \x1b[0;33mBevy\x1b[0m: {:>6.2} s", (bevy as f64) / 1000000000.0);
    println!("   \x1b[0;31mTotal:\x1b[0m {:>6.2} s", (pc + aos + soa + bevy) as f64 / 1000000000.0);
}

pub fn save_iteration_times(
    file_path: &str,
    architecture: &str,
    planet_count: usize,
    iterations: usize,
    chunk_size: usize,
    payload: usize,
    time: u128,
) {
    let file_exists = std::path::Path::new(file_path).exists();
    let mut file = OpenOptions::new()
        .create(true)
        .append(true)
        .open(file_path)
        .expect("unable to open file");

    if !file_exists {
        writeln!(file, "architecture,planets,iterations,chunk,payload,time_ns").unwrap();
    }

    writeln!(
        file,
        "{},{},{},{},{},{}",
        architecture, planet_count, iterations, chunk_size, payload, time
    ).unwrap();
}

pub fn delete_csv() {
    let files = ["bevy.csv", "soa.csv", "aos.csv", "pc.csv"];
    let base_path_s1 = "diagrams/s1/csv";
    let base_path_s2 = "diagrams/s2/csv";
    let base_path_s3 = "diagrams/s3/csv";

    for file in files {
        let path = format!("{}/{}", base_path_s1, file);
        let _ = fs::remove_file(path);

        let path = format!("{}/{}", base_path_s2, file);
        let _ = fs::remove_file(path);

        let path = format!("{}/{}", base_path_s3, file);
        let _ = fs::remove_file(path);
    }
    println!("----------------------");
    println!(" \x1b[0;31m[DELETED]\x1b[0m  CSV files")
}