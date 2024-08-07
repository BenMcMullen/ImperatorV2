GetAsteroids(100, 200, true);
payloadInRange = false;
var player = instance_find(obj_player, 0);


instance_create_layer(player.x, player.y, "Player", obj_payloadNuke);