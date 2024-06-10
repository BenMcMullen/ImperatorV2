// Initialize variables
x = obj_player.x;
y = obj_player.y;
player_direction = 1; // This should match the player's direction initially
plasmadelay = 0;
missiledelay = 0;
recoil = 0;
facing_direction = 0;
min_angle = 0;
max_angle = 0;

shots_fired = 0;
cooldown_timer = 0;
max_shots = 20;
cooldown_duration = 40; // 2 seconds, converted to steps
