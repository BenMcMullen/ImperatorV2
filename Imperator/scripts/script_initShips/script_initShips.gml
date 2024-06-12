function InitShips() {
	
	function ShieldConfig(_id, _name, _isOwned, _delay, _cooldown, _uses, _spriteStatic, _spriteActive, _shieldStatic, _shieldStaticMax, _shieldActive) {
    return {
        id: _id,
        name: _name,
        isOwned: _isOwned,
        delay: _delay,
        cooldown: _cooldown,
        uses: _uses,
        spriteStatic: _spriteStatic,
        spriteActive: _spriteActive,
        shieldStatic: _shieldStatic,
		shieldStaticMax: _shieldStaticMax,
        shieldActive: _shieldActive
    };
}

	
	 function PrimaryWeaponConfig(_id, _name, _isOwned, _delay, _cooldown, _capacity, _accuracy, _shotSpeed, _damage, _audio, _sprite) {
        return {
            id: _id,
            name: _name,
            isOwned: _isOwned,
            delay: _delay,
            cooldown: _cooldown,
			capacity: _capacity,
			accuracy: _accuracy,
			shotSpeed: _shotSpeed,
			damage: _damage,
			audio: _audio,
			sprite: _sprite
        };
    }
	
	 function SecondaryWeaponConfig(_id, _name, _isOwned, _delay, _cooldown, _capacity, _accuracy, _shotSpeed, _damage, _audio, _sprite, _deployAngle) {
        return {
            id: _id,
            name: _name,
            isOwned: _isOwned,
            delay: _delay,
            cooldown: _cooldown,
			capacity: _capacity,
			accuracy: _accuracy,
			shotSpeed: _shotSpeed,
			damage: _damage,
			audio: _audio,
			sprite: _sprite,
			deployAngle: _deployAngle
        };
    }
	
	
    function EngineConfig(_id, _name, _isOwned, _boostSpeed, _speed, _cooldown) {
        return {
            id: _id,
            name: _name,
            isOwned: _isOwned,
            boostSpeed: _boostSpeed,
            speed: _speed,
			cooldown: _cooldown
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
	
	function HullConfig(_id, _name, _isOwned, _hp, _maxHp) {
        return {
            id: _id,
            name: _name,
            isOwned: _isOwned,
            hp: _hp,
            maxHp: _maxHp
        };
    }

    function ShipConfig(_id, _hull, _engine, _primaryWeapon, _secondaryWeapon, _isOwned, _shields, _spriteStatic,
                        _spriteBoosting, _spriteMoving, _x, _y, _shipName, _shipClass, _shipGeneration,
                        _sensors) {
        return {
            id: _id,
            hull: _hull,
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
	
	
	global.hulls = [];

// Adding hulls individually
global.hulls[0] = HullConfig(
    1,
    "Standard Hull",  // Name
    true,             // Is Owned
    3,              // HP
    3               // Max HP
);

global.hulls[1] = HullConfig(
    2,
    "Reinforced Hull", // Name
    false,             // Is Owned
    7,               // HP
    7                // Max HP
);

	
	global.shields = [];

// Adding shields individually
global.shields[0] = ShieldConfig(
    1,
    "Basic Shield",      // Name
    true,                // Is Owned
    0.25,                 // Delay
    10.0,                 // Cooldown
    50,                   // Uses
    spr_pulseShield,    // Sprite Static 
    spr_pulseShield,    // Sprite Active 
    13,                  // Shield Static 
	13,					// Shield Static Max
    30                   // Shield Active 
);

global.shields[1] = ShieldConfig(
    2,
    "Scout Shield",   // Name
    true,               // Is Owned
    0,                 // Delay
    0,                 // Cooldown
    0,                   // Uses
    spr_pulseShield, // Sprite Static 
    spr_pulseShield, // Sprite Active 
    7,                  // Shield Static 
	7,					// Shield Static Max
    0                   // Shield Active
);

	
	global.primaryWeapons = [];

// Adding primary weapons individually
global.primaryWeapons[0] = PrimaryWeaponConfig(
    1,
    "Plasma Cannon",     // Name
    true,               // Is Owned
    5,                // Delay
    80,                // Cooldown
    20,                // Capacity
    [-2,2],                // Accuracy
    25.0,               // Shot Speed
    1,                 // Damage
    snd_plasma,    // Audio 
    spr_plasma
);

global.primaryWeapons[1] = PrimaryWeaponConfig(
    2,
    "Rail Gun",   // Name
    true,              // Is Owned
    2,               // Delay
    200.0,                // Cooldown
    60,                 // Capacity
    [-1,1],               // Accuracy
    40.0,               // Shot Speed
    2,                 // Damage
    snd_plasma,  // Audio 
    spr_railGun
);

	
	global.secondaryWeapons = [];

// Adding secondary weapons individually
global.secondaryWeapons[0] = SecondaryWeaponConfig(
    1,
    "Missile Launcher", // Name
    true,               // Is Owned
    0,                // Delay
    45,                // Cooldown
    2,                 // Capacity
    [-0.5, 0.5],               // Accuracy
    10.0,                // Shot Speed
    10,                // Damage
    snd_missile,// Audio (assuming snd_missileLauncher is a defined audio resource)
    spr_missile1,
	0			// Deploy Angle
);

global.secondaryWeapons[1] = SecondaryWeaponConfig(
    2,
    "Pulse Bomb",      // Name
    true,               // Is Owned
    0,                // Delay
    90,                // Cooldown
    1,                 // Capacity
    [-0.5, 0.5],               // Accuracy
    0,                // Shot Speed
    10,                // Damage
    snd_missile,// Audio (assuming snd_missileLauncher is a defined audio resource)
    spr_pulseBomb,
	90			// Deploy Angle
);

	
	

    // Initialize the global array of engines
    global.engines = [];

    // Adding engines individually
    global.engines[0] = EngineConfig(
        1,
        "Standard Engine",  // Name
        true,               // Is Owned
        3.0,                // Boost Speed
        3.0,                 // Speed
		0					// Cooldown
    );

    global.engines[1] = EngineConfig(
        2,  
        "Advanced Engine",  // Name
        false,              // Is Owned
        4,                 // Boost Speed
        5,                 // Speed
		0					// Cooldown
    );

    global.engines[2] = EngineConfig(
        3,
        "Hyper Engine",     // Name
        false,              // Is Owned
        2.5,                // Boost Speed
        2.0,                 // Speed
		0					// Cooldown
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
        global.hulls[0],                // HP
        global.engines[0],  // Engine
        global.primaryWeapons[0],            // Primary Weapon
        global.secondaryWeapons[0],          // Secondary Weapon
        true,              // Is Owned
        global.shields[1],                 // Shields
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
        global.hulls[1],                // HP
        global.engines[1],  // Engine
         global.primaryWeapons[1],           // Primary Weapon
        global.secondaryWeapons[1],           // Secondary Weapon
        true,              // Is Owned
        global.shields[0],                 // Shields
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
        global.hulls[0],                // HP
        global.engines[2],  // Engine
        global.primaryWeapons[0],             // Primary Weapon
        global.secondaryWeapons[0],              // Secondary Weapon
        true,				// Is Owned
        global.shields[0],                // Shields
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

global.selectedShip = global.playerShips[1]
  
}
