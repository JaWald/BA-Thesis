use std::hint::black_box;
use std::time::Instant;
use bevy::prelude::{Vec3, World};
//use rand::RngExt;
use rand::rngs::StdRng;
use crate::PAYLOAD_SIZE;
use crate::setup::*;

#[unsafe(no_mangle)]
#[inline(never)]
pub fn bench_s3_pc(iterations: usize, chunk_size: usize, planets: &mut Vec<Box<PlanetAoS>>, _rng: &mut StdRng) -> u128 {
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
            //let index = rng.random_range(0..planets.len());
            //black_box(planets.swap_remove(index));
            black_box(planets.pop());
        }
    }
    now.elapsed().as_nanos()
}

#[unsafe(no_mangle)]
#[inline(never)]
pub fn bench_s3_aos(iterations: usize, chunk_size: usize, planets: &mut Vec<PlanetAoS>, _rng: &mut StdRng) -> u128 {
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
            //let index = rng.random_range(0..planets.len());
            //black_box(planets.swap_remove(index));
            black_box(planets.pop());
        }
    }
    now.elapsed().as_nanos()
}

#[unsafe(no_mangle)]
#[inline(never)]
pub fn bench_s3_soa(iterations: usize, chunk_size: usize, planets: &mut PlanetsSoA, _rng: &mut StdRng) -> u128 {
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

        /*
        for _ in 0..chunk_size {
            let index = rng.random_range(0..planets.positions_x.len());            black_box(planets.positions_x.remove(index));
            black_box(planets.positions_y.swap_remove(index));
            black_box(planets.positions_z.swap_remove(index));
            black_box(planets.velocities_x.swap_remove(index));
            black_box(planets.velocities_y.swap_remove(index));
            black_box(planets.velocities_z.swap_remove(index));
            black_box(planets.payloads.swap_remove(index));
        }
        */
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
    _rng: &mut StdRng
) -> u128 {
    let mut entities = Vec::with_capacity(chunk_size);
    let now = Instant::now();
    for _ in 0..iterations {
        for _ in 0..chunk_size {
            let id = world.spawn((
                Position(Vec3::new(0.0, 0.0, 0.0).to_vec3a()),
                Velocity(Vec3::new(0.0, 0.0, 0.0).to_vec3a()),
                Payload([0u8; PAYLOAD_SIZE]),
            )).id();
            entities.push(id);
        }
        for _ in 0..chunk_size {
            //let index = rng.random_range(0..entities.len());
            //let del_entity = entities.swap_remove(index);
            //world.despawn(del_entity);
            world.despawn(entities.pop().unwrap());
        }
    }
    now.elapsed().as_nanos()
}