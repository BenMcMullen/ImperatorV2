if (global.isPaused) {
    // If the game is paused, exit the step event
    exit;
}
if (instance_exists(obj_player)){
var player = instance_find(obj_player, 0);
y = player.y - 2000;
}

// Step event of obj_huntingenemy
if (beginFiringSequence) {
	beginFiringSequence = false;
        priming = true;
        alarm[1] = 420;
}
		 
if (instance_exists(obj_player) && priming) {
    instance_create_layer(x, y, "Enemy", obj_payloadParticleCannonTargetingLaser)
}

if (instance_exists(obj_player) && firing) {
	
	instance_create_layer(x, y, "Enemy", obj_payloadParticleCannonBeam)
       
   } 


