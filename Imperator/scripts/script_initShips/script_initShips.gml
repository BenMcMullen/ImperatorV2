function InitShips() {
	

    function ShipConfig(_hull, _engine, _primaryWeapon, _secondaryWeapon, _isOwned, _shields, _sprites, _x, _y, _shipName, _shipClass, _shipGeneration, _sensors, _unlocked, _destroyed) {
        return {
            hull: _hull,
            engine: _engine,
            primaryWeapon: _primaryWeapon,
            secondaryWeapon: _secondaryWeapon,
            isOwned: _isOwned,
            shields: _shields,
            sprites: _sprites,
            x: _x,
            y: _y,
            shipName: _shipName,
            shipClass: _shipClass,
            shipGeneration: _shipGeneration,
            sensors: _sensors,
			unlocked: _unlocked,
			destroyed: _destroyed
        };
    }

    function ShipSpriteConfig(_id, _name, _spriteStatic, _spriteBoosting, _spriteMoving, _spriteGarage, _spriteHangar) {
        return {
            id: _id,
            name: _name,
            spriteStatic: _spriteStatic,
            spriteBoosting: _spriteBoosting,
            spriteMoving: _spriteMoving,
            spriteGarage: _spriteGarage,
			spriteHangar: _spriteHangar
        };
    }

    function ShieldConfig(_id, _name, _isOwned, _delay, _cooldown, _uses, 
	_spriteStatic, _spriteActive, _shieldStatic, _shieldStaticMax, _shieldActive, _garageSprite, _shopSprite, _cost, _unlocked) {
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
            shieldActive: _shieldActive,
			garageSprite: _garageSprite,
			shopSprite: _shopSprite,
			cost: _cost,
			unlocked: _unlocked
        };
    }

    function PrimaryWeaponConfig(_name, _isOwned, _delay, _cooldown,
	_capacity, _accuracy, _shotSpeed, _damage, _audio, _sprite, _range, _garageSprite, _shopSprite, _cost, _unlocked) {
        return {
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
			range: _range,
			garageSprite: _garageSprite,
			shopSprite: _shopSprite,
			cost: _cost,
			unlocked: _unlocked
        };
    }

    function SecondaryWeaponConfig(_name, _isOwned, _delay, _cooldown, _capacity,
	_accuracy, _shotSpeed, _damage, _audio, _sprite, _deployAngle, _range, _garageSprite, _shopSprite, _cost, _unlocked) {
        return {
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
            deployAngle: _deployAngle,
			range: _range,
			garageSprite: _garageSprite,
			shopSprite: _shopSprite,
			cost: _cost,
			unlocked: _unlocked
        };
    }

    function EngineConfig(_id, _name, _isOwned, _boostSpeed, _speed, _cooldown, _garageSprite, _shopSprite, _cost, _unlocked) {
        return {
            id: _id,
            name: _name,
            isOwned: _isOwned,
            boostSpeed: _boostSpeed,
            speed: _speed,
            cooldown: _cooldown,
			garageSprite: _garageSprite,
			shopSprite: _shopSprite,
			cost: _cost,
			unlocked: _unlocked
        };
    }

    function SensorConfig(_id, _name, _isOwned, _radius, _range, _sensitivity, _garageSprite, _shopSprite, _cost, _unlocked) {
        return {
            id: _id,
            name: _name,
            isOwned: _isOwned,
            radius: _radius,
            range: _range,
			sensitivity: _sensitivity,
			garageSprite: _garageSprite,
			shopSprite: _shopSprite,
			cost: _cost,
			unlocked: _unlocked
        };
    }

    function HullConfig(_id, _name, _isOwned, _hp, _maxHp, _garageSprite, _shopSprite, _cost, _unlocked) {
        return {
            id: _id,
            name: _name,
            isOwned: _isOwned,
            hp: _hp,
            maxHp: _maxHp,
			garageSprite: _garageSprite,
			shopSprite: _shopSprite,
			cost: _cost,
			unlocked: _unlocked
        };
    }

    //GETTERS BY ID

    global.ById = function(id) {
        for (var i = 0; i < global.shipSprites.length; i++) {
            if (global.shipSprites[i].id == id) {
                return global.shipSprites[i];
            }
        }
        return null;
    };

    global.getHullById = function(id) {
        for (var i = 0; i < global.hulls.length; i++) {
            if (global.hulls[i].id == id) {
                return global.hulls[i];
            }
        }
        return null;
    };

    global.getShieldById = function(id) {
        for (var i = 0; i < global.shields.length; i++) {
            if (global.shields[i].id == id) {
                return global.shields[i];
            }
        }
        return null;
    };

    global.getPrimaryWeaponById = function(id) {
        for (var i = 0; i < global.primaryWeapons.length; i++) {
            if (global.primaryWeapons[i].id == id) {
                return global.primaryWeapons[i];
            }
        }
        return null;
    };

    global.getSecondaryWeaponById = function(id) {
        for (var i = 0; i < global.secondaryWeapons.length; i++) {
            if (global.secondaryWeapons[i].id == id) {
                return global.secondaryWeapons[i];
            }
        }
        return null;
    };

    global.getEngineById = function(id) {
        for (var i = 0; i < global.engines.length; i++) {
            if (global.engines[i].id == id) {
                return global.engines[i];
            }
        }
        return null;
    };

    global.getSensorById = function(id) {
        for (var i = 0; i < global.sensors.length; i++) {
            if (global.sensors[i].id == id) {
                return global.sensors[i];
            }
        }
        return null;
    };

    global.getPlayerShipById = function(id) {
        for (var i = 0; i < global.playerShips.length; i++) {
            if (global.playerShips[i].id == id) {
                return global.playerShips[i];
            }
        }
        return null;
    };

// Initialize global ship sprite configurations array
    global.sprites = [];

    // Adding ship sprite configurations individually
    global.sprites[0] = ShipSpriteConfig(
        1,
        "WASP",             // Ship Name
        spr_waspStatic,     // Static sprite
        spr_waspBoosting,   // Boosting sprite
        spr_waspMoving,     // Moving sprite
        spr_waspGarage,     // Garage sprite
		spr_waspHangar		// Hangar Sprite
    );

    global.sprites[1] = ShipSpriteConfig(
        2,
        "RAPTOR",             // Ship Name
        spr_raptorStatic,     // Static sprite
        spr_raptorBoosting,   // Boosting sprite
        spr_raptorMoving,     // Moving sprite
        spr_raptorGarage,     // Garage sprite
		spr_raptorHangar		// Hangar Sprite
    );
	
	global.sprites[2] = ShipSpriteConfig(
        3,
        "Sparrow",             // Ship Name
        spr_sparrowStatic,     // Static sprite
        spr_sparrowBoosting,   // Boosting sprite
        spr_sparrowMoving,     // Moving sprite
        spr_sparrowGarage,     // Garage sprite
		spr_sparrowHangar		// Hangar Sprite
    );

 // Initialize the global array of engines
    global.engines = [];

    // Adding engines individually
    global.engines[0] = EngineConfig(
        1,
        "Standard Engine",      // Name
        false,                   // Is Owned
        3.0,                    // Boost Speed
        3.0,                    // Speed
        0,                       // Cooldown
		spr_shopUpgrade,		// Garage Sprite
		spr_shopUpgrade,		// Shop Sprite
		500,						// Cost
		true	
    );

    global.engines[1] = EngineConfig(
        2,
        "Advanced Engine",      // Name
        true,                  // Is Owned
        4,                      // Boost Speed
        5,                      // Speed
        0,                       // Cooldown
		spr_basicTest_1,		// Garage Sprite
		spr_shopUpgrade,		// Shop Sprite
		500,						// Cost
		true	
    );

    global.engines[2] = EngineConfig(
        3,
        "Frigate Engine",         // Name
        false,                  // Is Owned
        2.5,                    // Boost Speed
        2.0,                    // Speed
        0,                       // Cooldown
		spr_shipSystemsLarge,		// Garage Sprite
		spr_shipSystemsLarge,		// Shop Sprite
		500,						// Cost
		true	
    );
	
	  global.engines[3] = EngineConfig(
        3,
        "Test ONE",         // Name
        false,                  // Is Owned
        2.5,                    // Boost Speed
        2.0,                    // Speed
        0,                       // Cooldown
		spr_shipSystemsLarge,		// Garage Sprite
		spr_shipSystemsLarge,		// Shop Sprite
		500,						// Cost
		true	
    );
	
	  global.engines[4] = EngineConfig(
        3,
        "TWO Engine",         // Name
        false,                  // Is Owned
        2.5,                    // Boost Speed
        2.0,                    // Speed
        0,                       // Cooldown
		spr_shipSystemsLarge,		// Garage Sprite
		spr_shipSystemsLarge,		// Shop Sprite
		500,						// Cost
		true	
    );
	
	  global.engines[5] = EngineConfig(
        3,
        "BIG THREE",         // Name
        false,                  // Is Owned
        2.5,                    // Boost Speed
        2.0,                    // Speed
        0,                       // Cooldown
		spr_shipSystemsLarge,		// Garage Sprite
		spr_shipSystemsLarge,		// Shop Sprite
		500,						// Cost
		true	
    );
	
	  global.engines[6] = EngineConfig(
        3,
        "ANOTHER ONE",         // Name
        false,                  // Is Owned
        2.5,                    // Boost Speed
        2.0,                    // Speed
        0,                       // Cooldown
		spr_shipSystemsLarge,		// Garage Sprite
		spr_shipSystemsLarge,		// Shop Sprite
		500,						// Cost
		true	
    );

    global.hulls = [];

    // Adding hulls individually
    global.hulls[0] = HullConfig(
        1,
        "Standard Hull",    // Name
        false,               // Is Owned
        3,                  // HP
        3,                   // Max HP
		spr_shipSystemsLarge,		// Garage Sprite
		spr_shipSystemsLarge,		// Shop Sprite
		500,						// Cost
		true						// Unlocked
    );

    global.hulls[1] = HullConfig(
        2,
        "Combat Hull",  // Name
        false,              // Is Owned
        7,                  // HP
        7,                   // Max HP
		spr_shipSystemsLarge,		// Garage Sprite
		spr_shipSystemsLarge,		// Shop Sprite
		500,						// Cost
		true						// Unlocked
    );
	
	global.hulls[2] = HullConfig(
        2,
        "Reinforced Hull",  // Name
        false,              // Is Owned
        11,                  // HP
        11,                   // Max HP
		spr_shipSystemsLarge,		// Garage Sprite
		spr_shipSystemsLarge,		// Shop Sprite
		500,						// Cost
		true						// Unlocked
    );
	
	global.hulls[3] = HullConfig(
        2,
        "meh Hull",  // Name
        false,              // Is Owned
        11,                  // HP
        11,                   // Max HP
		spr_shipSystemsLarge,		// Garage Sprite
		spr_shipSystemsLarge,		// Shop Sprite
		500,						// Cost
		true						// Unlocked
    );
	
	global.hulls[4] = HullConfig(
        2,
        "heg Hull",  // Name
        false,              // Is Owned
        11,                  // HP
        11,                   // Max HP
		spr_shipSystemsLarge,		// Garage Sprite
		spr_shipSystemsLarge,		// Shop Sprite
		500,						// Cost
		false						// Unlocked
    );
	
	global.hulls[5] = HullConfig(
        2,
        "Rein22222222222222222222222222222forced Hull",  // Name
        false,              // Is Owned
        11,                  // HP
        11,                   // Max HP
		spr_shipSystemsLarge,		// Garage Sprite
		spr_shipSystemsLarge,		// Shop Sprite
		500,						// Cost
		false						// Unlocked
    );
	
	global.hulls[5] = HullConfig(
        2,
        "2222 Hull",  // Name
        false,              // Is Owned
        11,                  // HP
        11,                   // Max HP
		spr_shipSystemsLarge,		// Garage Sprite
		spr_shipSystemsLarge,		// Shop Sprite
		500,						// Cost
		true						// Unlocked
    );
	
	global.hulls[6] = HullConfig(
        2,
        "123 Hull",  // Name
        false,              // Is Owned
        11,                  // HP
        11,                   // Max HP
		spr_shipSystemsLarge,		// Garage Sprite
		spr_shipSystemsLarge,		// Shop Sprite
		500,						// Cost
		true						// Unlocked
    );

    global.shields = [];

    // Adding shields individually
    global.shields[0] = ShieldConfig(
        1,
        "Combat Shield",         // Name
        false,                   // Is Owned
        0.25,                   // Delay
        10.0,                   // Cooldown
        50,                     // Uses
        spr_pulseShield,        // Sprite Static 
        spr_pulseShield,        // Sprite Active 
        13,                     // Shield Static 
        13,                     // Shield Static Max
        30,                      // Shield Active 
		spr_shipSystemsLarge,		// Garage Sprite
		spr_shipSystemsLarge,		// Shop Sprite
		500,						// Cost
		true						// Unlocked
    );

    global.shields[1] = ShieldConfig(
        2,
        "Scout Shield",         // Name
        false,                   // Is Owned
        0,                      // Delay
        0,                      // Cooldown
        0,                      // Uses
        spr_pulseShield,        // Sprite Static 
        spr_pulseShield,        // Sprite Active 
        7,                      // Shield Static 
        7,                      // Shield Static Max
        0,                       // Shield Active
		spr_shipSystemsLarge,		// Garage Sprite
		spr_shipSystemsLarge,		// Shop Sprite
		500,						// Cost
		true						// Unlocked
    );
	
	 global.shields[2] = ShieldConfig(
        2,
        "Frigate Shield",         // Name
        true,                   // Is Owned
        0,                      // Delay
        0,                      // Cooldown
        0,                      // Uses
        spr_pulseShield,        // Sprite Static 
        spr_pulseShield,        // Sprite Active 
        20,                      // Shield Static 
        20,                      // Shield Static Max
        0,                       // Shield Active
		spr_shipSystemsLarge,		// Garage Sprite
		spr_shipSystemsLarge,		// Shop Sprite
		500,						// Cost
		true						// Unlocked
    );
	
	 global.shields[3] = ShieldConfig(
        2,
        "New Shield",         // Name
        false,                   // Is Owned
        0,                      // Delay
        0,                      // Cooldown
        0,                      // Uses
        spr_pulseShield,        // Sprite Static 
        spr_pulseShield,        // Sprite Active 
        20,                      // Shield Static 
        20,                      // Shield Static Max
        0,                       // Shield Active
		spr_shipSystemsLarge,		// Garage Sprite
		spr_shipSystemsLarge,		// Shop Sprite
		500,						// Cost
		true						// Unlocked
    );

    global.primaryWeapons = [];

    // Adding primary weapons individually
    global.primaryWeapons[0] = PrimaryWeaponConfig(
        "Plasma Cannon",        // Name
        false,                   // Is Owned
        5,                      // Delay
        80,                     // Cooldown
        20,                     // Capacity
        [-2, 2],                // Accuracy
        25.0,                   // Shot Speed
        1,                      // Damage
        snd_plasma,             // Audio 
        spr_plasma,
		600,						//Projectile Range
		spr_shipSystemsLarge,		// Garage Sprite
		spr_shipSystemsLarge,		// Shop Sprite
		500,						// Cost
		true						// Unlocked
		
    );

    global.primaryWeapons[1] = PrimaryWeaponConfig(
        "Rail Gun",             // Name
        false,                   // Is Owned
        2,                      // Delay
        200.0,                  // Cooldown
        60,                     // Capacity
        [-1, 1],                // Accuracy
        40.0,                   // Shot Speed
        2,                      // Damage
        snd_plasma,             // Audio 
        spr_railGun,
		750,						//Projectile Range
		spr_shipSystemsLarge,		// Garage Sprite
		spr_shipSystemsLarge,		// Shop Sprite
		500,						// Cost
		true						// Unlocked
    );
	
	 global.primaryWeapons[2] = PrimaryWeaponConfig(
        "Beam Cannon",             // Name
        false,                   // Is Owned
        0,                      // Delay
        400.0,                  // Cooldown
        200,                     // Capacity
        [-0, 0],                // Accuracy
        60.0,                   // Shot Speed
        .5,                      // Damage
        snd_plasma,             // Audio 
        spr_beamCannon,
		400,						//Projectile Range
		spr_shipSystemsLarge,		// Garage Sprite
		spr_shipSystemsLarge,		// Shop Sprite
		500,						// Cost
		true						// Unlocked
    );
	
	 global.primaryWeapons[3] = PrimaryWeaponConfig(
        "New Weapon",             // Name
        false,                   // Is Owned
        0,                      // Delay
        400.0,                  // Cooldown
        200,                     // Capacity
        [-0, 0],                // Accuracy
        60.0,                   // Shot Speed
        .5,                      // Damage
        snd_plasma,             // Audio 
        spr_beamCannon,
		400,						//Projectile Range
		spr_shipSystemsLarge,		// Garage Sprite
		spr_shipSystemsLarge,		// Shop Sprite
		500,						// Cost
		false						// Unlocked
    );

    global.secondaryWeapons = [];

    // Adding secondary weapons individually
    global.secondaryWeapons[0] = SecondaryWeaponConfig(
        "Missile Launcher",     // Name
        true,                   // Is Owned
        0,                      // Delay
        45,                     // Cooldown
        1,                      // Capacity
        [-0.5, 0.5],            // Accuracy
        10.0,                   // Shot Speed
        10,                     // Damage
        snd_missile,            // Audio (assuming snd_missileLauncher is a defined audio resource)
        spr_missile1,
        0,                      // Deploy Angle
		750,						//Projectile Range
		spr_shipSystemsLarge,		// Garage Sprite
		spr_shipSystemsLarge,		// Shop Sprite
		500,
		true
    );

    global.secondaryWeapons[1] = SecondaryWeaponConfig(
        "Swarm Bomb",           // Name
        true,                   // Is Owned
        0,                      // Delay
        90,                     // Cooldown
        1,                      // Capacity
        [-0, 0],			    // Accuracy
        50,                      // Shot Speed
        10,                     // Damage
        snd_missile,            // Audio (assuming snd_missileLauncher is a defined audio resource)
        spr_swarmBomb,          
		180,                     // Deploy Angle
		300,						// Projectile Range
		spr_shipSystemsLarge,		// Garage Sprite
		spr_shipSystemsLarge,		// Shop Sprite
		500,						// Cost
		true						// Unlocked
    );
	
	global.secondaryWeapons[2] = SecondaryWeaponConfig(
        "Energy Cannon",             // Name
        true,                   // Is Owned
        0,                      // Delay
        80.0,                  // Cooldown
        1,                     // Capacity
        [-0, 0],                // Accuracy
        25.0,                   // Shot Speed
        5,                      // Damage
        snd_missile,             // Audio 
        spr_energyCannon,
		0,  
		1500, // Projectile Range
		spr_shipSystemsLarge,		// Garage Sprite
		spr_shipSystemsLarge,		// Shop Sprite
		500,						// Cost
		true						// Unlocked
    );
	
	global.secondaryWeapons[3] = SecondaryWeaponConfig(
        "New Secondary",             // Name
        false,                   // Is Owned
        0,                      // Delay
        80.0,                  // Cooldown
        1,                     // Capacity
        [-0, 0],                // Accuracy
        25.0,                   // Shot Speed
        5,                      // Damage
        snd_missile,             // Audio 
        spr_energyCannon,
		0,  
		1500, // Projectile Range
		spr_shipSystemsLarge,		// Garage Sprite
		spr_shipSystemsLarge,		// Shop Sprite
		500,						// Cost
		false						// Unlocked
    );

    // Initialize the global array of sensors
    global.sensors = [];

    // Adding sensors individually
    global.sensors[0] = SensorConfig(
    1,
    "Standard Sensor",      // Name
    true,                   // Is Owned
    3.0,                    // Radius
    3.0,                    // Range
    1,                       // Sensitivity
	spr_shipSystemsLarge,		// Garage Sprite
	spr_shipSystemsLarge,		// Shop Sprite
	500,						// Cost
	true						// Unlocked
);

global.sensors[1] = SensorConfig(
    2,
    "Advanced Sensor",      // Name
    false,                  // Is Owned
    4,                      // Radius
    5,                      // Range
    2,                       // Sensitivity
	spr_shipSystemsLarge,		// Garage Sprite
	spr_shipSystemsLarge,		// Shop Sprite
	500,						// Cost
	true						// Unlocked
);

global.sensors[2] = SensorConfig(
    3,
    "Hyper Sensor",         // Name
    false,                  // Is Owned
    2.5,                    // Radius
    2.0,                    // Range
    3,                       // Sensitivity
	spr_shipSystemsLarge,		// Garage Sprite
	spr_shipSystemsLarge,		// Shop Sprite
	500,						// Cost
	true						// Unlocked
);

global.sensors[3] = SensorConfig(
    3,
    "New Sensor",         // Name
    false,                  // Is Owned
    2.5,                    // Radius
    2.0,                    // Range
    3,                       // Sensitivity
	spr_shipSystemsLarge,		// Garage Sprite
	spr_shipSystemsLarge,		// Shop Sprite
	500,						// Cost
	true						// Unlocked
);


    // Define upgradeable systems for each ship. The first item is the ship ID, the rest are the different upgradable ship systems. 
    // These systems are to be determined later. Possibly even update if we unlock new upgrade slots?
    global.shipSystemsUpgradable = [];
    global.shipSystemsUpgradable[0] = [1, false, true, true, true, true, true, true, false];
    global.shipSystemsUpgradable[1] = [2, true, false, true, true, true, true, true, false];
    global.shipSystemsUpgradable[2] = [3, true, true, false, true, true, true, true, false];

    // Initialize the global array of player ships
    global.playerShips = [];

    // Adding ships individually and assigning engines
    global.playerShips[0] = ShipConfig(
        global.hulls[0],                        // Hull
        global.engines[0],                      // Engine
        global.primaryWeapons[0],               // Primary Weapon
        global.secondaryWeapons[0],             // Secondary Weapon
        true,                                   // Is Owned
        global.shields[1],                      // Shields
        global.sprites[0],                      // Sprites
        100,                                    // Hangar X position
        100,                                    // Hangar Y position
        "Wasp",                                 // Ship Name
        "Scout",                                // Ship Class
        "Gen 4 Mercurian",                       // Ship Generation
        global.sensors[1],                       // Sensors
		true,									// Unlocked
		false									// Destroyed
    );

    global.playerShips[1] = ShipConfig(
        global.hulls[1],                        // Hull
        global.engines[1],                      // Engine
        global.primaryWeapons[1],               // Primary Weapon
        global.secondaryWeapons[1],             // Secondary Weapon
        true,                                   // Is Owned
        global.shields[0],                      // Shields
        global.sprites[1],                      // Sprites
        200,                                    // Hangar X position
        100,                                    // Hangar Y position
        "Raptor",                                 // Ship Name
        "Interceptor",                              // Ship Class
        "Gen 5 Venuzian",                      // Ship Generation
        global.sensors[2],                       // Sensors
		true,									// Unlocked
		false									// Destroyed
    );

    global.playerShips[2] = ShipConfig(
        global.hulls[2],                        // Hull
        global.engines[2],                      // Engine
        global.primaryWeapons[2],               // Primary Weapon
        global.secondaryWeapons[2],				// Secondary Weapon
        true,                                   // Is Owned
        global.shields[2],                      // Shields
        global.sprites[2],                      // Sprites
        300,                                    // Hangar X position
        100,                                    // Hangar Y position
        "Sparrow",                               // Ship Name
        "Frigate",                          // Ship Class
        "Gen 3 Venuzian",                                // Ship Generation
        global.sensors[0],                       // Sensors
		true,									// Unlocked
		false									// Destroyed
    );

}
