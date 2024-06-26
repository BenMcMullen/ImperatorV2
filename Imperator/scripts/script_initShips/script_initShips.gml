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

    function ShieldConfig(_id, _name, _isOwned, _delay, _cooldown, _uses, _spriteStatic, _spriteActive, _shieldStatic, _shieldStaticMax, _shieldActive, _systemSprite, _cost, _unlocked, _destroyed, _basic) {
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
            systemSprite: _systemSprite,
            cost: _cost,
            unlocked: _unlocked,
            destroyed: _destroyed,
            basic: _basic
        };
    }

    function PrimaryWeaponConfig(_name, _isOwned, _delay, _cooldown, _capacity, _accuracy, _shotSpeed, _damage, _audio, _sprite, _range, _systemSprite, _cost, _unlocked, _destroyed, _basic) {
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
            systemSprite: _systemSprite,
            cost: _cost,
            unlocked: _unlocked,
            destroyed: _destroyed,
            basic: _basic
        };
    }

    function SecondaryWeaponConfig(_name, _isOwned, _delay, _cooldown, _capacity, _accuracy, _shotSpeed, _damage, _audio, _sprite, _range, _systemSprite, _cost, _unlocked, _destroyed, _basic) {
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
            systemSprite: _systemSprite,
            cost: _cost,
            unlocked: _unlocked,
            destroyed: _destroyed,
            basic: _basic
        };
    }

    function EngineConfig(_id, _name, _isOwned, _boostSpeed, _speed, _cooldown, _systemSprite, _cost, _unlocked, _destroyed, _basic) {
        return {
            id: _id,
            name: _name,
            isOwned: _isOwned,
            boostSpeed: _boostSpeed,
            speed: _speed,
            cooldown: _cooldown,
            systemSprite: _systemSprite,
            cost: _cost,
            unlocked: _unlocked,
            destroyed: _destroyed,
            basic: _basic
        };
    }

    function SensorConfig(_id, _name, _isOwned, _radius, _range, _sensitivity, _systemSprite, _cost, _unlocked, _destroyed, _basic) {
        return {
            id: _id,
            name: _name,
            isOwned: _isOwned,
            radius: _radius,
            range: _range,
            sensitivity: _sensitivity,
            systemSprite: _systemSprite,
            cost: _cost,
            unlocked: _unlocked,
            destroyed: _destroyed,
            basic: _basic
        };
    }

    function HullConfig(_id, _name, _isOwned, _hp, _maxHp, _systemSprite, _cost, _unlocked, _destroyed, _basic) {
        return {
            id: _id,
            name: _name,
            isOwned: _isOwned,
            hp: _hp,
            maxHp: _maxHp,
            systemSprite: _systemSprite,
            cost: _cost,
            unlocked: _unlocked,
            destroyed: _destroyed,
            basic: _basic
        };
    }

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
        spr_waspHangar      // Hangar Sprite
    );

    global.sprites[1] = ShipSpriteConfig(
        2,
        "RAPTOR",             // Ship Name
        spr_raptorStatic,     // Static sprite
        spr_raptorBoosting,   // Boosting sprite
        spr_raptorMoving,     // Moving sprite
        spr_raptorGarage,     // Garage sprite
        spr_raptorHangar      // Hangar Sprite
    );

    global.sprites[2] = ShipSpriteConfig(
        3,
        "Sparrow",             // Ship Name
        spr_sparrowStatic,     // Static sprite
        spr_sparrowBoosting,   // Boosting sprite
        spr_sparrowMoving,     // Moving sprite
        spr_sparrowGarage,     // Garage sprite
        spr_sparrowHangar      // Hangar Sprite
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
        spr_shopUpgrade,        // Shop Sprite
        500,                    // Cost
        true,                   // Unlocked
        false,                  // Destroyed
        false                   // Basic
    );

    global.engines[1] = EngineConfig(
        2,
        "Advanced Engine",      // Name
        true,                   // Is Owned
        4.0,                    // Boost Speed
        5.0,                    // Speed
        0,                       // Cooldown
        spr_basicTest_1,        // Shop Sprite
        500,                    // Cost
        true,                   // Unlocked
        false,                  // Destroyed
        false                   // Basic
    );

    global.engines[2] = EngineConfig(
        3,
        "Frigate Engine",         // Name
        false,                  // Is Owned
        2.5,                    // Boost Speed
        2.0,                    // Speed
        0,                       // Cooldown
        spr_shipSystemsLarge,   // Shop Sprite
        500,                    // Cost
        true,                   // Unlocked
        false,                  // Destroyed
        false                   // Basic
    );

    global.engines[3] = EngineConfig(
        4,
        "Test ONE",         // Name
        false,                  // Is Owned
        2.5,                    // Boost Speed
        2.0,                    // Speed
        0,                       // Cooldown
        spr_shipSystemsLarge,   // Shop Sprite
        500,                    // Cost
        true,                   // Unlocked
        false,                  // Destroyed
        false                   // Basic
    );

    global.engines[4] = EngineConfig(
        5,
        "TWO Engine",         // Name
        false,                  // Is Owned
        2.5,                    // Boost Speed
        2.0,                    // Speed
        0,                       // Cooldown
        spr_shipSystemsLarge,   // Shop Sprite
        500,                    // Cost
        true,                   // Unlocked
        false,                  // Destroyed
        false                   // Basic
    );

    // Initialize the global array of shields
    global.shields = [];

    // Adding shields individually
    global.shields[0] = ShieldConfig(
        1,
        "Basic Shields",       // Name
        false,                  // Is Owned
        0.5,                    // Delay
        1.0,                    // Cooldown
        1,                      // Uses
        spr_basicTest_1,        // Static sprite
        spr_shopUpgrade,        // Active sprite
        10,                     // Static shield
        10,                     // Max static shield
        20,                     // Active shield
        spr_shopUpgrade,        // System sprite
        500,                    // Cost
        true,                   // Unlocked
        false,                  // Destroyed
        false                   // Basic
    );

    global.shields[1] = ShieldConfig(
        2,
        "Advanced Shields",    // Name
        true,                   // Is Owned
        0.3,                    // Delay
        1.5,                    // Cooldown
        2,                      // Uses
        spr_basicTest_1,        // Static sprite
        spr_shopUpgrade,        // Active sprite
        20,                     // Static shield
        20,                     // Max static shield
        40,                     // Active shield
        spr_shopUpgrade,        // System sprite
        500,                    // Cost
        true,                   // Unlocked
        false,                  // Destroyed
        false                   // Basic
    );

    global.shields[2] = ShieldConfig(
        3,
        "Elite Shields",       // Name
        false,                  // Is Owned
        0.2,                    // Delay
        2.0,                    // Cooldown
        3,                      // Uses
        spr_basicTest_1,        // Static sprite
        spr_shopUpgrade,        // Active sprite
        30,                     // Static shield
        30,                     // Max static shield
        60,                     // Active shield
        spr_shopUpgrade,        // System sprite
        500,                    // Cost
        true,                   // Unlocked
        false,                  // Destroyed
        false                   // Basic
    );

    // Initialize the global array of hulls
    global.hulls = [];

    // Adding hulls individually
    global.hulls[0] = HullConfig(
        1,
        "Standard Hull",      // Name
        false,                  // Is Owned
        100,                    // HP
        100,                    // Max HP
        spr_shopUpgrade,        // Shop Sprite
        500,                    // Cost
        true,                   // Unlocked
        false,                  // Destroyed
        false                   // Basic
    );

    global.hulls[1] = HullConfig(
        2,
        "Advanced Hull",      // Name
        true,                   // Is Owned
        150,                    // HP
        150,                    // Max HP
        spr_basicTest_1,        // Shop Sprite
        500,                    // Cost
        true,                   // Unlocked
        false,                  // Destroyed
        false                   // Basic
    );

    global.hulls[2] = HullConfig(
        3,
        "Frigate Hull",       // Name
        false,                  // Is Owned
        200,                    // HP
        200,                    // Max HP
        spr_shipSystemsLarge,   // Shop Sprite
        500,                    // Cost
        true,                   // Unlocked
        false,                  // Destroyed
        false                   // Basic
    );

    global.hulls[3] = HullConfig(
        4,
        "Test Hull ONE",      // Name
        false,                  // Is Owned
        200,                    // HP
        200,                    // Max HP
        spr_shipSystemsLarge,   // Shop Sprite
        500,                    // Cost
        true,                   // Unlocked
        false,                  // Destroyed
        false                   // Basic
    );

    global.hulls[4] = HullConfig(
        5,
        "Hull TWO",           // Name
        false,                  // Is Owned
        200,                    // HP
        200,                    // Max HP
        spr_shipSystemsLarge,   // Shop Sprite
        500,                    // Cost
        true,                   // Unlocked
        false,                  // Destroyed
        false                   // Basic
    );

    // Initialize the global array of primary weapons
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
		spr_shipSystemsLarge,		// Shop Sprite
		500,						// Cost
		true,						// Unlocked
		false,                  // Destroyed
        false  
		
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
		spr_shipSystemsLarge,		// Shop Sprite
		500,						// Cost
		true,						// Unlocked
		false,                  // Destroyed
        false  
    );
	
	 global.primaryWeapons[2] = PrimaryWeaponConfig(
        "Beam Cannon",             // Name
        false,                   // Is Owned
        0,                      // Delay
        401.0,                  // Cooldown
        200,                     // Capacity
        [-0, 0],                // Accuracy
        60.0,                   // Shot Speed
        .5,                      // Damage
        snd_plasma,             // Audio 
        spr_beamCannon,
		401,						//Projectile Range
		spr_shipSystemsLarge,		// Shop Sprite
		500,						// Cost
		true,						// Unlocked
		false,                  // Destroyed
        false  
    );
	
	 global.primaryWeapons[3] = PrimaryWeaponConfig(
        "New Weapon",             // Name
        false,                   // Is Owned
        0,                      // Delay
        401.0,                  // Cooldown
        200,                     // Capacity
        [-0, 0],                // Accuracy
        60.0,                   // Shot Speed
        .5,                      // Damage
        snd_plasma,             // Audio 
        spr_beamCannon,
		401,						//Projectile Range
		spr_shipSystemsLarge,			// Shop Sprite
		500,						// Cost
		true,						// Unlocked
		false,                  // Destroyed
        false  
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
        spr_missile1,                   // Deploy Angle
		750,						//Projectile Range
		spr_shipSystemsLarge,		// Shop Sprite
		500,
		true,						// Unlocked
		false,                  // Destroyed
        false  
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
        spr_swarmBomb,          // Deploy Angle
		300,						// Projectile Range
		spr_shipSystemsLarge,		// Shop Sprite
		500,						// Cost
		true,						// Unlocked
		false,                  // Destroyed
        false  
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
		1500,			// Projectile Range
		spr_shipSystemsLarge,		// Shop Sprite
		500,						// Cost
		true,						// Unlocked
		false,                  // Destroyed
        false  
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
		1500, // Projectile Range
		spr_shipSystemsLarge,		// Shop Sprite
		500,						// Cost
		true,						// Unlocked
		false,                  // Destroyed
        false  
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
	spr_shipSystemsLarge,		// Shop Sprite
	500,						// Cost
	true,						// Unlocked
		false,                  // Destroyed
        false  
);

global.sensors[1] = SensorConfig(
    2,
    "Advanced Sensor",      // Name
    false,                  // Is Owned
    4,                      // Radius
    5,                      // Range
    2,                       // Sensitivity
	spr_shipSystemsLarge,		// Shop Sprite
	500,						// Cost
	true,						// Unlocked
		false,                  // Destroyed
        false  
);

global.sensors[2] = SensorConfig(
    3,
    "Hyper Sensor",         // Name
    false,                  // Is Owned
    2.5,                    // Radius
    2.0,                    // Range
    3,                       // Sensitivity
	spr_shipSystemsLarge,		// Shop Sprite
	500,						// Cost
	true,						// Unlocked
		false,                  // Destroyed
        false  
);

global.sensors[3] = SensorConfig(
    3,
    "New Sensor",         // Name
    false,                  // Is Owned
    2.5,                    // Radius
    2.0,                    // Range
    3,                       // Sensitivity
	spr_shipSystemsLarge,	// Shop Sprite
	500,						// Cost
	true,						// Unlocked
		false,                  // Destroyed
        false  
);
    
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