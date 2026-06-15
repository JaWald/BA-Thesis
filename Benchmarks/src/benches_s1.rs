use std::time::Instant;
use bevy::prelude::{QueryState, World};
use crate::G;
use crate::setup::*;

#[unsafe(no_mangle)]
#[inline(never)]
pub fn bench_s1_pc(iterations: usize, planets: &mut Vec<Box<PlanetAoS>>, dt: f32) -> u128 {
    let now = Instant::now();
    for _ in 0..iterations {
        for planet in planets.iter_mut() {
            let direction = -planet.position;
            let r_squared = direction.length_squared();
            let a_scalar = G / r_squared;
            let a = direction.normalize() * a_scalar;
            planet.velocity += a * dt;
            planet.position += planet.velocity * dt;
        }
    }
    now.elapsed().as_nanos()
}

#[unsafe(no_mangle)]
#[inline(never)]
pub fn bench_s1_aos(iterations: usize, planets: &mut Vec<PlanetAoS>, dt: f32) -> u128 {
    let now = Instant::now();
    for _ in 0..iterations {
        for planet in planets.iter_mut() {
            let direction = -planet.position;
            let r_squared = direction.length_squared();
            let a_scalar = G / r_squared;
            let a = direction.normalize() * a_scalar;
            planet.velocity += a * dt;
            planet.position += planet.velocity * dt;
        }
    }
   now.elapsed().as_nanos()
}

#[unsafe(no_mangle)]
#[inline(never)]
pub fn bench_s1_soa(iterations: usize, planets: &mut PlanetsSoA, dt: f32) -> u128 {
    let now = Instant::now();
    for _ in 0..iterations {
        for i in 0..planets.positions_x.len() {
            let px = planets.positions_x[i];
            let py = planets.positions_y[i];
            let pz = planets.positions_z[i];

            let r_sq = px * px + py * py + pz * pz;
            let r = r_sq.sqrt();
            let accel_factor = G / (r_sq * r);

            planets.velocities_x[i] -= px * accel_factor * dt;
            planets.velocities_y[i] -= py * accel_factor * dt;
            planets.velocities_z[i] -= pz * accel_factor * dt;

            planets.positions_x[i] += planets.velocities_x[i] * dt;
            planets.positions_y[i] += planets.velocities_y[i] * dt;
            planets.positions_z[i] += planets.velocities_z[i] * dt;
        }
    }
    now.elapsed().as_nanos()
}

#[unsafe(no_mangle)]
#[inline(never)]
pub fn bench_s1_bevy(
    iterations: usize,
    mut world: &mut World,
    query: &mut QueryState<(&mut Position, &mut Velocity)>,
    dt: f32
) -> u128 {
    let now = Instant::now();

    /*
    for _ in 0..iterations {
        for (mut pos, mut vel) in query.iter_mut(&mut world) {
            let direction = -pos.0;
            let r_squared = direction.length_squared();
            let a_scalar = G / r_squared;
            let a = direction.normalize() * a_scalar;
            vel.0 += a * dt;
            pos.0 += vel.0 * dt;
        }
    }
    */
    // /*
    for _ in 0..iterations {
        for (mut pos_slice, mut vel_slice) in query.contiguous_iter_mut(&mut world).unwrap() {
            for (pos, vel) in pos_slice.iter_mut().zip(vel_slice.iter_mut()) {
                let direction = -pos.0;
                let r_squared = direction.length_squared();
                let a_scalar = G / r_squared;
                let a = direction.normalize() * a_scalar;
                vel.0 += a * dt;
                pos.0 += vel.0 * dt;
            }
        }
    }
    // */
    now.elapsed().as_nanos()
}