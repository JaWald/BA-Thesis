use bevy::prelude::{Component, World, Vec3, Vec3A};
use rand::prelude::{SliceRandom, StdRng};
use rand::{RngExt, SeedableRng};
use crate::PAYLOAD_SIZE;

#[allow(dead_code)]
pub struct PlanetAoS {
    pub velocity: Vec3,
    pub position: Vec3,
    pub payload: [u8; PAYLOAD_SIZE],
}

#[allow(dead_code)]
pub struct PlanetsSoA {
    pub velocities_x: Vec<f32>,
    pub velocities_y: Vec<f32>,
    pub velocities_z: Vec<f32>,
    pub positions_x: Vec<f32>,
    pub positions_y: Vec<f32>,
    pub positions_z: Vec<f32>,
    pub payloads: Vec<[u8; PAYLOAD_SIZE]>
}

#[allow(dead_code)]
#[derive(Component)] pub struct Payload(pub [u8; PAYLOAD_SIZE]);
#[derive(Component)] pub struct Position(pub Vec3A);
#[derive(Component)] pub struct Velocity(pub Vec3A);

pub fn setup_pc(planet_count: usize) -> Vec<Box<PlanetAoS>> {
    let mut rng: StdRng = SeedableRng::seed_from_u64(42);
    let mut planets: Vec<Box<PlanetAoS>> = Vec::new();
    for _ in 0..planet_count {
        planets.push(Box::new(PlanetAoS {
            velocity: random_vec3(&mut rng),
            position: random_vec3(&mut rng),
            payload: [0; PAYLOAD_SIZE]
        }))
    }
    planets.shuffle(&mut rng);
    planets
}

pub fn setup_aos(planet_count: usize) -> Vec<PlanetAoS> {
    let mut planets: Vec<PlanetAoS> = Vec::with_capacity(planet_count);
    let mut rng: StdRng = SeedableRng::seed_from_u64(42);
    for _ in 0..planet_count {
        planets.push(PlanetAoS {
            velocity: random_vec3(&mut rng),
            position: random_vec3(&mut rng),
            payload: [0; PAYLOAD_SIZE]
        });
    }
    planets
}

pub fn setup_soa(planet_count: usize) -> PlanetsSoA {
    let mut rng = SeedableRng::seed_from_u64(42);
    let mut soa = PlanetsSoA {
        positions_x: Vec::with_capacity(planet_count),
        positions_y: Vec::with_capacity(planet_count),
        positions_z: Vec::with_capacity(planet_count),
        velocities_x: Vec::with_capacity(planet_count),
        velocities_y: Vec::with_capacity(planet_count),
        velocities_z: Vec::with_capacity(planet_count),
        payloads: Vec::with_capacity(planet_count),
    };

    for _ in 0..planet_count {
        let pos = random_vec3(&mut rng);
        let vel = random_vec3(&mut rng);

        soa.positions_x.push(pos.x);
        soa.positions_y.push(pos.y);
        soa.positions_z.push(pos.z);

        soa.velocities_x.push(vel.x);
        soa.velocities_y.push(vel.y);
        soa.velocities_z.push(vel.z);
        soa.payloads.push([0u8; PAYLOAD_SIZE])
    }
    soa
}

pub fn setup_bevy(planet_count: usize) -> World {
    let mut world = World::new();
    let mut rng = StdRng::seed_from_u64(42);

    for _ in 0..planet_count {
        world.spawn((
            Velocity(random_vec3(&mut rng).to_vec3a()),
            Position(random_vec3(&mut rng).to_vec3a()),
            Payload([0u8; PAYLOAD_SIZE]),
        ));
    }
    world
}

pub fn random_vec3(rng: &mut StdRng) -> Vec3 {
    Vec3::new(rng.random(), rng.random(), rng.random())
}
