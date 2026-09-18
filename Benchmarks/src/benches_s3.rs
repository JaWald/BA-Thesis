use std::hint::black_box;
use std::time::Instant;
use bevy::prelude::{Vec3, Vec3A, World};
//use rand::RngExt;
use rand::rngs::StdRng;
use crate::PAYLOAD_SIZE;
use crate::setup::*;

#[unsafe(no_mangle)]
#[inline(never)]
pub fn bench_s3_pc(iterations: usize, chunk_size: usize, reuse: bool, planets: &mut Vec<Box<PlanetAoS>>, _rng: &mut StdRng) -> u128 {
    let now = Instant::now();
    for _ in 0..iterations {
        for _ in 0..chunk_size {
            planets.push(Box::new(PlanetAoS {
                position: black_box(Vec3::ZERO),
                velocity: black_box(Vec3::ZERO),
                payload: [black_box(0u8); PAYLOAD_SIZE],
            }))
        }
        if reuse {
            for _ in 0..chunk_size {
                black_box(planets.pop());
            }
        } else {
            for _ in 0..chunk_size {
                let _ = planets.pop();
            }
        }
    }
    now.elapsed().as_nanos()
}

#[unsafe(no_mangle)]
#[inline(never)]
pub fn bench_s3_aos(iterations: usize, chunk_size: usize, reuse: bool, planets: &mut Vec<PlanetAoS>, _rng: &mut StdRng) -> u128 {
    let now = Instant::now();
    for _ in 0..iterations {
        for _ in 0..chunk_size {
            planets.push(PlanetAoS {
                position: black_box(Vec3::ZERO),
                velocity: black_box(Vec3::ZERO),
                payload: [black_box(0u8); PAYLOAD_SIZE],
            })
        }
        if reuse {
            for _ in 0..chunk_size {
                black_box(planets.pop());
            }
        } else {
            for _ in 0..chunk_size {
                let _ = planets.pop();
            }
        }
    }
    now.elapsed().as_nanos()
}

#[unsafe(no_mangle)]
#[inline(never)]
pub fn bench_s3_soa(iterations: usize, chunk_size: usize, reuse: bool, planets: &mut PlanetsSoA, _rng: &mut StdRng) -> u128 {
    let now = Instant::now();
    for _ in 0..iterations {
        for _ in 0..chunk_size {
            planets.positions_x.push(black_box(0.0));
            planets.positions_y.push(black_box(0.0));
            planets.positions_z.push(black_box(0.0));
            planets.velocities_x.push(black_box(0.0));
            planets.velocities_y.push(black_box(0.0));
            planets.velocities_z.push(black_box(0.0));
            planets.payloads.push([black_box(0u8); PAYLOAD_SIZE]);
        }

        /*
        for _ in 0..chunk_size {
            let index = rng.random_range(0..planets.positions_x.len());
            black_box(planets.positions_x.remove(index));
            black_box(planets.positions_y.swap_remove(index));
            black_box(planets.positions_z.swap_remove(index));
            black_box(planets.velocities_x.swap_remove(index));
            black_box(planets.velocities_y.swap_remove(index));
            black_box(planets.velocities_z.swap_remove(index));
            black_box(planets.payloads.swap_remove(index));
        }
        */
        if reuse {
            for _ in 0..chunk_size {
                black_box(planets.positions_x.pop());
                black_box(planets.positions_y.pop());
                black_box(planets.positions_z.pop());
                black_box(planets.velocities_x.pop());
                black_box(planets.velocities_y.pop());
                black_box(planets.velocities_z.pop());
                black_box(planets.payloads.pop());
            }
        } else {
            for _ in 0..chunk_size {
                let _ = planets.positions_x.pop();
                let _ = planets.positions_y.pop();
                let _ = planets.positions_z.pop();
                let _ = planets.velocities_x.pop();
                let _ = planets.velocities_y.pop();
                let _ = planets.velocities_z.pop();
                let _ = planets.payloads.pop();
            }
        }
    }
    now.elapsed().as_nanos()
}

#[unsafe(no_mangle)]
#[inline(never)]
pub fn bench_s3_bevy(
    iterations: usize,
    chunk_size: usize,
    reuse: bool,
    world: &mut World,
    _rng: &mut StdRng
) -> u128 {
    let mut entities = Vec::with_capacity(chunk_size);
    let now = Instant::now();
    for _ in 0..iterations {
        for _ in 0..chunk_size {
            let id = world.spawn((
                Position(black_box(Vec3A::ZERO)),
                Velocity(black_box(Vec3A::ZERO)),
                Payload([black_box(0u8); PAYLOAD_SIZE]),
            )).id();
            entities.push(id);
        }
        if reuse {
            for _ in 0..chunk_size {
                let entity = entities.pop().unwrap();
                let er = world.entity(entity);
                let pos = er.get::<Position>().unwrap().0;
                let vel = er.get::<Velocity>().unwrap().0;
                let pay = er.get::<Payload>().unwrap().0;
                black_box((pos, vel, pay));
                world.despawn(entity);
            }
        } else {
            for _ in 0..chunk_size {
                world.despawn(entities.pop().unwrap());
            }
        }
    }
    now.elapsed().as_nanos()
}