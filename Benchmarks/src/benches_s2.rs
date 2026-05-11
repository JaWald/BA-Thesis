use std::time::Instant;
use bevy::prelude::{QueryState, World};
use crate::setup::{PlanetAoS, PlanetsSoA, Position, Velocity};

#[unsafe(no_mangle)]
#[inline(never)]
pub fn bench_s2_pc(iterations: usize, planets: &mut Vec<Box<PlanetAoS>>, dt: f32) -> u128 {
    let now = Instant::now();
    for _ in 0..iterations {
        for planet in planets.iter_mut() {
            planet.position += planet.velocity * dt;
        }
    }
    now.elapsed().as_nanos()
}

#[unsafe(no_mangle)]
#[inline(never)]
pub fn bench_s2_aos(iterations: usize, planets: &mut Vec<PlanetAoS>, dt: f32) -> u128 {
    let now = Instant::now();
    for _ in 0..iterations {
        for planet in planets.iter_mut() {
            planet.position += planet.velocity * dt;
        }
    }
    now.elapsed().as_nanos()
}

#[unsafe(no_mangle)]
#[inline(never)]
pub fn bench_s2_soa(iterations: usize, planets: &mut PlanetsSoA, dt: f32) -> u128 {
    let now = Instant::now();
    for _ in 0..iterations {
        for i in 0..planets.positions_x.len() {
            planets.positions_x[i] += planets.velocities_x[i] * dt;
            planets.positions_y[i] += planets.velocities_y[i] * dt;
            planets.positions_z[i] += planets.velocities_z[i] * dt;
        }
    }
    now.elapsed().as_nanos()
}

#[unsafe(no_mangle)]
#[inline(never)]
pub fn bench_s2_bevy(
    iterations: usize,
    mut world: &mut World,
    query: &mut QueryState<(&mut Position, &mut Velocity)>,
    dt: f32
) -> u128 {
    let now = Instant::now();
    /*
    for _ in 0..iterations {
        for (mut pos, vel) in query.iter_mut(&mut world) {
            pos.0 += vel.0 * dt;
        }
    }
    */
    for _ in 0..iterations {
        for (mut pos_arr, mut vel_arr) in query.contiguous_iter_mut(&mut world).unwrap() {
            for (pos, vel) in pos_arr.iter_mut().zip(vel_arr.iter_mut()) {
                pos.0 += vel.0 * dt;
            }
        }
    }
    now.elapsed().as_nanos()
}