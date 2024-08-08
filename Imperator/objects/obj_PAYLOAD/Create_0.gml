
payloadInRange = false;
var player = instance_find(obj_player, 0);


instance_create_layer(player.x, player.y, "Player", obj_payloadNuke);
instance_create_layer(x, y, "Player", obj_payloadParticleCannonSpawner);