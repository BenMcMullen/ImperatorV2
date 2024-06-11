function InitShips() {
	
    function EngineConfig(_id, _name, _isOwned, _boostSpeed, _speed) {
        return {
            id: _id,
            name: _name,
            isOwned: _isOwned,
            boostSpeed: _boostSpeed,
            speed: _speed
        };
    }
	
	function SensorConfig(_id, _name, _isOwned, _radius, _range) {
        return {
            id: _id,
            name: _name,
            isOwned: _isOwned,
            radius: _radius,
            range: _range
        };
    }

    function ShipConfig(_id, _hp, _engine, _primaryWeapon, _secondaryWeapon, _isOwned, _shields, _spriteStatic,
                        _spriteBoosting, _spriteMoving, _x, _y, _shipName, _shipClass, _shipGeneration,
                        _sensors) {
        return {
            id: _id,
            hp: _hp,
            engine: _engine,
            primaryWeapon: _primaryWeapon,
            secondaryWeapon: _secondaryWeapon,
            isOwned: _isOwned,
            shields: _shields,
            spriteStatic: _spriteStatic,
            spriteBoosting: _spriteBoosting,
            spriteMoving: _spriteMoving,
            x: _x,
            y: _y,
            shipName: _shipName,
            shipClass: _shipClass,
            shipGeneration: _shipGeneration,
            sensors: _sensors
        };
    }

    // Initialize the global array of engines
    global.engines = [];

    // Adding engines individually
    global.engines[0] = EngineConfig(
        1,
        "Standard Engine",  // Name
        true,               // Is Owned
        3.0,                // Boost Speed
        3.0                 // Speed
    );

    global.engines[1] = EngineConfig(
        2,  
        "Advanced Engine",  // Name
        false,              // Is Owned
        4,                // Boost Speed
        5                 // Speed
    );

    global.engines[2] = EngineConfig(
        3,
        "Hyper Engine",     // Name
        false,              // Is Owned
        2.5,                // Boost Speed
        2.0                 // Speed
    );
	// Initialize the global array of engines
    global.sensors = [];

    // Adding engines individually
    global.sensors[0] = SensorConfig(
        1,
        "Standard Engine",  // Name
        true,               // Is Owned
        3.0,                //Radius
        3.0                 //range
    );

    global.sensors[1] = SensorConfig(
        2,  
        "Advanced Engine",  // Name
        false,              // Is Owned
        4,                //Radius
        5                 //range
    );

    global.sensors[2] = SensorConfig(
        3,
        "Hyper Engine",     // Name
        false,              // Is Owned
        2.5,                //Radius
        2.0                 //range
    );

    // Initialize the global array of player ships
    global.playerShips = [];

    // Define upgradeable systems for each ship. The first item is the ship ID, the rest are the different upgradable ship systems. 
	//These systems are to be determined later. Possibly even update if we unlock new upgrade slots?
    global.shipSystemsUpgradable[0] = [1, false, true, true, true, true, true, true, false];
    global.shipSystemsUpgradable[1] = [2, true, false, true, true, true, true, true, false];
    global.shipSystemsUpgradable[2] = [3, true, true, false, true, true, true, true, false];

    // Adding ships individually and assigning engines
    global.playerShips[0] = ShipConfig(
        1,
        3,                // HP
        global.engines[0],  // Engine
        "Plasma",            // Primary Weapon
        "Missile",          // Secondary Weapon
        true,              // Is Owned
        70,                 // Shields
        spr_waspStatic,   // Sprite Static
        spr_waspBoosting,    // Sprite Boosting
        spr_waspMoving,     // Sprite Moving
        100,                // Hangar X position
        100,                // Hangar Y position
        "Wasp",           // Ship Name
        "Scout",          // Ship Class
        "Gen 4 Venuzian",            // Ship Generation
        global.sensors[1]		//Sensors
    );

    global.playerShips[1] = ShipConfig(
        2,
        7,                // HP
        global.engines[1],  // Engine
        "Kinetic",           // Primary Weapon
        "Radial Bomb",          // Secondary Weapon
        true,              // Is Owned
        13,                 // Shields
        spr_hawkStatic,   // Sprite Static
        spr_hawkBoosting,    // Sprite Boosting
        spr_hawkMoving,     // Sprite Moving
        200,                // Hangar X position
        100,                // Hangar Y position
        "Hawk",           // Ship Name
        "Frigate",           // Ship Class
        "Gen 5 Mercurian",            // Ship Generation
        global.sensors[1]		//Sensors
       
    );

    global.playerShips[2] = ShipConfig(
        3,
        300,                // HP
        global.engines[2],  // Engine
        "Beam",             // Primary Weapon
        "Mine",             // Secondary Weapon
        true,				// Is Owned
        100,                // Shields
        spr_waspStatic,     // Sprite Static
        spr_waspBoosting,   // Sprite Boosting
        spr_waspMoving,     // Sprite Moving
        300,                // Hangar X position
        100,                // Hangar Y position
        "Ship 3",           // Ship Name
        "Interceptor",      // Ship Class
        "Gen 1",            // Ship Generation
        global.sensors[0]	//Sensors
    );

   global.selectedShip = global.playerShips[0];
}
