use std::string::String;
use std::fs;
use std::fs::OpenOptions;
use std::io::Write;
use crate::cli::{Args, Scenario};

pub fn print_summary(scenario: &str, time_pc: Vec<u128>, time_aos: Vec<u128>, time_soa: Vec<u128>, time_bevy: Vec<u128>) {
    let pc: u128 = time_pc.iter().sum();
    let aos: u128 = time_aos.iter().sum();
    let soa: u128 = time_soa.iter().sum();
    let bevy: u128 = time_bevy.iter().sum();

    println!("-------- \x1b[0;32m{:?}\x1b[0m --------", scenario.to_string());
    println!("      \x1b[0;33mPC\x1b[0m: {:>6.2} s", (pc as f64) / 1000000000.0);
    println!("     \x1b[0;33mAoS\x1b[0m: {:>6.2} s", (aos as f64) / 1000000000.0);
    println!("     \x1b[0;33mSoA\x1b[0m: {:>6.2} s", (soa as f64) / 1000000000.0);
    println!("    \x1b[0;33mBevy\x1b[0m: {:>6.2} s", (bevy as f64) / 1000000000.0);
    println!("   \x1b[0;31mTotal:\x1b[0m {:>6.2} s", (pc + aos + soa + bevy) as f64 / 1000000000.0);
    println!("----------------------")
}

pub fn save_iteration_times(
    file_path: &str,
    architecture: &str,
    args: &Args,
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
        writeln!(file, "architecture,planet_count,iteration_count,chunk_size,reuse,payload,time_ns").unwrap();
    }

    writeln!(
        file,
        "{},{},{},{},{},{},{}",
        architecture, args.planet_count, args.iterations, args.chunk_size, args.reuse, payload, time
    ).unwrap();
}

pub fn file_name(architecture: &str, args: &Args) -> String {
    let mut path = String::from("diagrams/");
    match args.scenario {
        Scenario::S1 => { path.push_str("s1/csv/") },
        Scenario::S2 => { path.push_str("s2/csv/") },
        Scenario::S3 => { path.push_str("s3/csv/") },
        Scenario::Reset => {},
    }
    path.push_str(architecture);
    path.push_str("_w-");
    path.push_str(args.warmups.to_string().as_str());
    path.push_str("_i-");
    path.push_str(args.iterations.to_string().as_str());
    path.push_str("_s-");
    path.push_str(args.samples.to_string().as_str());
    if let Scenario::S3 = args.scenario {
        path.push_str("_r");
        path.push_str(args.reuse.to_string().as_str());
    }
    path.push_str(".csv");
    path
}

pub fn delete_csv() {
    let directories = ["diagrams/s1/csv", "diagrams/s2/csv", "diagrams/s3/csv"];
    let architectures = ["PC", "AoS", "SoA", "Bevy"];

    for dir in directories {
        if let Ok(entries) = fs::read_dir(dir) {
            for entry in entries.flatten() {
                let name = entry.file_name();
                if architectures.iter().any(|a| name.to_string_lossy().starts_with(a)) {
                    let _ = fs::remove_file(entry.path());
                }
            }
        }
    }

    println!("----------------------");
    println!(" \x1b[0;31m[DELETED]\x1b[0m  CSV files");
    println!("----------------------");
}