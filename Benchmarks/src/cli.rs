use clap::{Parser, ValueEnum};

#[derive(Parser, Debug)]
#[command(version="1.2", about, long_about = None)]
pub struct Args {
    #[arg(short = 'b', long = "benchmark", help = "Benchmark Scenario (includes csv delete)")]
    pub scenario: Scenario,

    #[arg(short = 'p', long = "planets", default_value = "10000", help = "Planet Count")]
    pub planet_count: usize,

    #[arg(short = 'w', long = "warmups", default_value = "5000", help = "Warmup Iterations")]
    pub warmups: usize,

    #[arg(short = 'i', long = "iterations", default_value = "5000", help = "Iterations")]
    pub iterations: usize,
    
    #[arg(short = 's', long = "samples", default_value = "1", help = "Data Samples")]
    pub samples: usize,

    #[arg(short = 'c', long = "chunksize", default_value = "100", help = "Chunk Size (S3)")]
    pub chunk_size: usize,

    #[arg(short = 'd', long = "debug", help = "Print runtime summary")]
    pub debug_print: bool,

    #[arg(short = 'r', long = "reuse", help = "Reuse popped S3 values")]
    pub reuse: bool,
}

#[derive(ValueEnum, Debug, Clone)]
pub enum Scenario {
    S1,
    S2,
    S3,
    Reset
}