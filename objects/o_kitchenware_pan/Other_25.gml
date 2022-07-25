/// @description Create Smoke
if (!instance_exists(smokeParticleObject)) {
	
	with (instance_create_depth(0, 0, PARTICLE_DEPTH, smokeParticleObject)) {
		followObject = other.cookingItemObject;
	}
	
}
