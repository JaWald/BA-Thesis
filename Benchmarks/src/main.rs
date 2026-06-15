mod setup;
mod benches_s1;
mod cli;
mod benches_s2;
mod util;
mod benches_s3;
mod payload;

use std::hint::black_box;
use clap::Parser;
use rand::prelude::StdRng;
use rand::SeedableRng;
use crate::setup::*;
use crate::benches_s1::*;
use crate::benches_s2::*;
use crate::benches_s3::*;
use crate::cli::*;
use crate::cli::Scenario::*;
use crate::util::*;
use crate::payload::*;  // necessary to be able to automate payload variance through scripts

const DT: f32 = 1.0 / 60.0;
const G: f32 = 6.674e-11 * 1.0e14;

/*
    In reference to bench_planets_aos with 1mio planets, 10000 iterations and NO payload as well as
    no RUSTFLAG regarding target cpu or target features.
    SSE... 128bit
    AVX... 256bit
    o1: xmm (SSE), mulss/addss                           ~ 2,5s
    o2: xmm (SSE), mulps/addps + movups/shufps/unpackhpd ~ 2,2s
    o3: xmm (SSE), mulps/addps + movups/shufps/unpackhpd ~ 2,2s

    with $env:RUSTFLAGS="-C target-cpu=native";         same speeds
    o1: xmm (SSE), vmulss/vaddss
    o2: ymm (AVX), vmulps/vaddps + vmovups/vshufps/vextractps
    o3: ymm (AVX), vmulps/vaddps + vmovups/vshufps/vextractps

    mul_add enforces vfmaddps (fused multiply-add)
 */
fn main() {
    let args = Args::parse();

    match args.scenario {
        S1 => run_s1(&args),
        S2 => run_s2(&args),
        S3 => run_s3(&args),
        Reset => delete_csv()
    }
    println!("----------------------")
}

fn run_s1(args: &Args) {
    let mut planets_pc = setup_pc(args.planet_count);
    let mut planets_aos = setup_aos(args.planet_count);
    let mut planets_soa = setup_soa(args.planet_count);
    let mut world = setup_bevy(args.planet_count);
    let mut query = world.query::<(&mut Position, &mut Velocity)>();

    let mut time_pc_sum: Vec<u128> = Vec::with_capacity(args.samples);
    let mut time_aos_sum: Vec<u128> = Vec::with_capacity(args.samples);
    let mut time_soa_sum: Vec<u128> = Vec::with_capacity(args.samples);
    let mut time_bevy_sum: Vec<u128> = Vec::with_capacity(args.samples);

    for _ in 0..args.samples {
        bench_s1_pc(args.warmups, &mut planets_pc, black_box(DT));
        let time_pc = bench_s1_pc(args.iterations, &mut planets_pc, black_box(DT));
        time_pc_sum.push(time_pc);
        save_iteration_times("diagrams/s1/csv/pc.csv", "PC", args, PAYLOAD_SIZE, time_pc);

        bench_s1_aos(args.warmups, &mut planets_aos, black_box(DT));
        let time_aos = bench_s1_aos(args.iterations, &mut planets_aos, black_box(DT));
        time_aos_sum.push(time_aos);
        save_iteration_times("diagrams/s1/csv/aos.csv", "AoS", args, PAYLOAD_SIZE, time_aos);

        bench_s1_soa(args.warmups, &mut planets_soa, black_box(DT));
        let time_soa = bench_s1_soa(args.iterations, &mut planets_soa, black_box(DT));
        time_soa_sum.push(time_soa);
        save_iteration_times("diagrams/s1/csv/soa.csv", "SoA", args, PAYLOAD_SIZE, time_soa);

        bench_s1_bevy(args.warmups, &mut world, &mut query, black_box(DT));
        let time_bevy = bench_s1_bevy(args.iterations, &mut world, &mut query, black_box(DT));
        time_bevy_sum.push(time_bevy);
        save_iteration_times("diagrams/s1/csv/bevy.csv","Bevy", args, PAYLOAD_SIZE, time_bevy);
    }

    if args.debug_print {
        print_summary("S1", time_pc_sum, time_aos_sum, time_soa_sum, time_bevy_sum);
    }

    black_box(planets_pc);
    black_box(planets_aos);
    black_box(planets_soa);
    black_box(world);
}

fn run_s2(args: &Args) {
    let mut planets_pc = setup_pc(args.planet_count);
    let mut planets_aos = setup_aos(args.planet_count);
    let mut planets_soa = setup_soa(args.planet_count);
    let mut world = setup_bevy(args.planet_count);
    let mut query = world.query::<(&mut Position, &mut Velocity)>();

    let mut time_pc_sum: Vec<u128> = Vec::with_capacity(args.samples);
    let mut time_aos_sum: Vec<u128> = Vec::with_capacity(args.samples);
    let mut time_soa_sum: Vec<u128> = Vec::with_capacity(args.samples);
    let mut time_bevy_sum: Vec<u128> = Vec::with_capacity(args.samples);

    for _ in 0..args.samples {
        bench_s2_pc(args.warmups, &mut planets_pc, black_box(DT));
        let time_pc = bench_s2_pc(args.iterations, &mut planets_pc, black_box(DT));
        time_pc_sum.push(time_pc);
        save_iteration_times("diagrams/s2/csv/pc.csv", "PC", args, PAYLOAD_SIZE, time_pc);

        bench_s2_aos(args.warmups, &mut planets_aos, black_box(DT));
        let time_aos = bench_s2_aos(args.iterations, &mut planets_aos, black_box(DT));
        time_aos_sum.push(time_aos);
        save_iteration_times("diagrams/s2/csv/aos.csv", "AoS", args, PAYLOAD_SIZE, time_aos);

        bench_s2_soa(args.warmups, &mut planets_soa, black_box(DT));
        let time_soa = bench_s2_soa(args.iterations, &mut planets_soa, black_box(DT));
        time_soa_sum.push(time_soa);
        save_iteration_times("diagrams/s2/csv/soa.csv", "SoA", args, PAYLOAD_SIZE, time_soa);

        bench_s2_bevy(args.warmups, &mut world, &mut query, black_box(DT));
        let time_bevy = bench_s2_bevy(args.iterations, &mut world, &mut query, black_box(DT));
        time_bevy_sum.push(time_bevy);
        save_iteration_times("diagrams/s2/csv/bevy.csv","Bevy", args, PAYLOAD_SIZE, time_bevy);
    }

    if args.debug_print {
        print_summary("S2", time_pc_sum, time_aos_sum, time_soa_sum, time_bevy_sum);
    }
}

fn run_s3(args: &Args) {
    let mut planets_pc = setup_pc(args.planet_count);
    let mut planets_aos = setup_aos(args.planet_count);
    let mut planets_soa = setup_soa(args.planet_count);
    let mut world = setup_bevy(args.planet_count);

    let mut time_pc_sum: Vec<u128> = Vec::with_capacity(args.samples);
    let mut time_aos_sum: Vec<u128> = Vec::with_capacity(args.samples);
    let mut time_soa_sum: Vec<u128> = Vec::with_capacity(args.samples);
    let mut time_bevy_sum: Vec<u128> = Vec::with_capacity(args.samples);

    let mut rng: StdRng = SeedableRng::seed_from_u64(42);

    for _ in 0..args.samples {
        bench_s3_pc(args.warmups, args.chunk_size, &mut planets_pc, &mut rng);
        let time_pc = bench_s3_pc(args.iterations, args.chunk_size, &mut planets_pc, &mut rng);
        time_pc_sum.push(time_pc);
        save_iteration_times("diagrams/s3/csv/pc.csv", "PC", args, PAYLOAD_SIZE, time_pc);

        bench_s3_aos(args.warmups, args.chunk_size, &mut planets_aos, &mut rng);
        let time_aos = bench_s3_aos(args.iterations, args.chunk_size, &mut planets_aos, &mut rng);
        time_aos_sum.push(time_aos);
        save_iteration_times("diagrams/s3/csv/aos.csv", "AoS", args, PAYLOAD_SIZE, time_aos);

        bench_s3_soa(args.warmups, args.chunk_size, &mut planets_soa, &mut rng);
        let time_soa = bench_s3_soa(args.iterations, args.chunk_size, &mut planets_soa, &mut rng);
        time_soa_sum.push(time_soa);
        save_iteration_times("diagrams/s3/csv/soa.csv", "SoA", args, PAYLOAD_SIZE, time_soa);

        bench_s3_bevy(args.warmups, args.chunk_size, &mut world, &mut rng);
        let time_bevy = bench_s3_bevy(args.iterations, args.chunk_size, &mut world, &mut rng);
        time_bevy_sum.push(time_bevy);
        save_iteration_times("diagrams/s3/csv/bevy.csv","Bevy", args, PAYLOAD_SIZE, time_bevy);
    }

    if args.debug_print {
        print_summary("S3", time_pc_sum, time_aos_sum, time_soa_sum, time_bevy_sum);
    }
}