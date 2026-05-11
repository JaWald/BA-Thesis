use std::hint::black_box;
use std::time::Instant;
use bevy::prelude::{Vec3, World};
use crate::PAYLOAD_SIZE;
use crate::setup::*;

#[unsafe(no_mangle)]
#[inline(never)]
pub fn bench_s3_pc(iterations: usize, chunk_size: usize, planets: &mut Vec<Box<PlanetAoS>>) -> u128 {
    let now = Instant::now();
    for _ in 0..iterations {
        for _ in 0..chunk_size {
            planets.push(Box::new(PlanetAoS {
                position: Vec3::default(),
                velocity: Vec3::default(),
                payload: [0; PAYLOAD_SIZE],
            }))
        }
        for _ in 0..chunk_size {
            black_box(planets.pop());
        }
    }
    now.elapsed().as_nanos()
}

#[unsafe(no_mangle)]
#[inline(never)]
pub fn bench_s3_aos(iterations: usize, chunk_size: usize, planets: &mut Vec<PlanetAoS>) -> u128 {
    let now = Instant::now();
    for _ in 0..iterations {
        for _ in 0..chunk_size {
            planets.push(PlanetAoS {
                position: Vec3::default(),
                velocity: Vec3::default(),
                payload: [0; PAYLOAD_SIZE],
            })
        }
        for _ in 0..chunk_size {
            black_box(planets.pop());
        }
    }
    now.elapsed().as_nanos()
}

#[unsafe(no_mangle)]
#[inline(never)]
pub fn bench_s3_soa(iterations: usize, chunk_size: usize, planets: &mut PlanetsSoA) -> u128 {
    let now = Instant::now();
    for _ in 0..iterations {
        for _ in 0..chunk_size {
            planets.positions_x.push(0.0);
            planets.positions_y.push(0.0);
            planets.positions_z.push(0.0);
            planets.velocities_x.push(0.0);
            planets.velocities_y.push(0.0);
            planets.velocities_z.push(0.0);
            planets.payloads.push([0; PAYLOAD_SIZE]);
        }
        for _ in 0..chunk_size {
            black_box(planets.positions_x.pop());
            black_box(planets.positions_y.pop());
            black_box(planets.positions_z.pop());
            black_box(planets.velocities_x.pop());
            black_box(planets.velocities_y.pop());
            black_box(planets.velocities_z.pop());
            black_box(planets.payloads.pop());
        }
    }
    now.elapsed().as_nanos()
}

#[unsafe(no_mangle)]
#[inline(never)]
pub fn bench_s3_bevy(
    iterations: usize,
    chunk_size: usize,
    world: &mut World,
) -> u128 {
    let mut entities = Vec::with_capacity(chunk_size);
    let now = Instant::now();
    for _ in 0..iterations {
        for _ in 0..chunk_size {
            let id = world.spawn((
                Position(Vec3::new(0.0, 0.0, 0.0)),
                Velocity(Vec3::new(0.0, 0.0, 0.0)),
                Payload([0u8; PAYLOAD_SIZE]),
            )).id();
            entities.push(id);
        }
        for id in entities.drain(..) {
            world.despawn(id);
        }
    }
    now.elapsed().as_nanos()
}