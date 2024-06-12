//HERE IS WHERE WE HANDLE THE MAJORITY OF OUR LEVELING LOGIC.
//WE SET THE NEXT LEVEL, THE NUMBER OF POINTS EARNED/LOST, THE NEW TYPE OF ENEMIES,
//THE NEW NUMBER OF ENEMIES ETC.

function InitLevels() {
	
	function LevelConfig(_id, _enemyTypes, _levelPoints, _room, _contract) {
    return {
		id: _id,
        enemyTypes: _enemyTypes,
        levelPoints: _levelPoints,
		contract: _contract,
        room: _room
    };
}
	
	global.enemyTypes = [];
	global.enemyTypes[0] = "Rip Wing";
	global.enemyTypes[1] = "Razer Claw";
	global.enemyTypes[2] = "Eminator";

	global.levels = [];
	global.levels[0] = LevelConfig(1, [], 0, room_menu, 0);
    global.levels[1] = LevelConfig(2, [], 0, room_intro, 0);
    global.levels[2] = LevelConfig(3, [], 0, room_shop, 0);
	global.levels[3] = LevelConfig(4, [], 0, room_hangar, 0);
	global.levels[4] = LevelConfig(1, [], 0, room_shipGarage, 0);
	global.levels[5] = LevelConfig(5, [], 0, room_testFlight, 0);
	global.levels[6] = LevelConfig(6, global.enemyTypes[0], 200, room_1, 2);
	global.levels[7] = LevelConfig(7, global.enemyTypes[0], 300, room_2, 3);
	global.levels[8] = LevelConfig(8, global.enemyTypes[0], 500, room_3, 5);
	global.levels[9] = LevelConfig(9, [global.enemyTypes[0], global.enemyTypes[0]], 800, room_4, 6);
  

	
	global.contractType = global.enemyTypes[0];


}