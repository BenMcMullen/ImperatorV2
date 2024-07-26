function InitSystems() {
    
    // Function to define system status configurations
    function SystemStatusConfig(_systemPoints, _class, _system, _name, _cost, _unlocked, _destroyed, _basic, _isOwned, _quantity) {
        return {
			systemPoints: _systemPoints,
			class: _class, 
            system: _system,
            name: _name,
            cost: _cost,
            unlocked: _unlocked,
            destroyed: _destroyed,
            basic: _basic,
            isOwned: _isOwned,
            quantity: _quantity
        };
    }

    // Function to define shield configurations
    function ShieldConfig(_name, _overloadRestoreTime, _restoreRate, _uses, _spriteStatic, _spriteActive, _shieldStatic, _shieldStaticReduction, _shieldActive, _shieldActiveConsume, _systemSprite, _systemStatus) {
        return {
            name: _name,
            overloadRestoreTime: _overloadRestoreTime,
            restoreRate: _restoreRate,
            uses: _uses,
            spriteStatic: _spriteStatic,
            spriteActive: _spriteActive,
            shieldStatic: _shieldStatic,
            shieldStaticReduction: _shieldStaticReduction,
            shieldActive: _shieldActive,
            shieldActiveConsume: _shieldActiveConsume,
            systemSprite: _systemSprite,
            systemStatus: _systemStatus
        };
    }

    // Function to define hull configurations
    function HullConfig(_name, _hp, _repairability, _maxHp, _systemSprite, _systemStatus) {
        return {
            name: _name,
            hp: _hp,
			repairability: _repairability,
            maxHp: _maxHp,
            systemSprite: _systemSprite,
            systemStatus: _systemStatus
        };
    }

    // Function to define secondary weapon configurations
    function SecondaryWeaponConfig(_name, _delay, _cooldown, _capacity, _accuracy, _shotSpeed, _damage, _audio, _sprite, _range, _damageType, _systemSprite, _systemStatus) {
        return {
            name: _name,
            delay: _delay,
            cooldown: _cooldown,
            capacity: _capacity,
            accuracy: _accuracy,
            shotSpeed: _shotSpeed,
            damage: _damage,
            audio: _audio,
            sprite: _sprite,
            range: _range,
			damageType: _damageType,
            systemSprite: _systemSprite,
            systemStatus: _systemStatus
        };
    }

    // Function to define primary weapon configurations
    function PrimaryWeaponConfig(_name, _delay, _cooldown, _capacity, _accuracy, _shotSpeed, _damage, _audio, _sprite, _range, _damageType, _systemSprite, _systemStatus) {
        return {
            name: _name,
            delay: _delay,
            cooldown: _cooldown,
            capacity: _capacity,
            accuracy: _accuracy,
            shotSpeed: _shotSpeed,
            damage: _damage,
            audio: _audio,
            sprite: _sprite,
            range: _range,
			damageType: _damageType,
            systemSprite: _systemSprite,
            systemStatus: _systemStatus
        };
    }

    // Function to define sensor configurations
    function SensorConfig(_name, _radius, _range, _sensitivity, _systemSprite, _systemStatus) {
        return {
            name: _name,
            radius: _radius,
            range: _range,
            sensitivity: _sensitivity,
            systemSprite: _systemSprite,
            systemStatus: _systemStatus
        };
    }

    // Function to define engine configurations
    function EngineConfig(_name, _boostSpeed, _speed, _cooldown, _burnup, _capacity, _systemSprite, _systemStatus) {
        return {
            name: _name,
            boostSpeed: _boostSpeed,
            speed: _speed,
            cooldown: _cooldown,
			burnup: _burnup,
			capacity: _capacity,
            systemSprite: _systemSprite,
            systemStatus: _systemStatus
        };
    }

    // Initialize the global array of primary weapons
    global.primaryWeapons = [];

    // Primary Weapons System Status
    global.systemStatus[0] = SystemStatusConfig( 
		5,		//systemPoints
		"Any",	// ship class
        "primaryWeapons",
        "Plasma Cannon",
        500,
        true,    // unlocked
        false,   // destroyed
        true,    // basic
        false,    // isOwned
        1
    );

    global.systemStatus[1] = SystemStatusConfig(  
		5,		//systemPoints
		"Any",	// ship class
        "primaryWeapons",
        "Rail Gun",
        750,
        true,    // unlocked
        false,   // destroyed
        true,    // basic
        false,    // isOwned
        1
    );

    global.systemStatus[2] = SystemStatusConfig(  
		5,		//systemPoints
		"Any",	// ship class
        "primaryWeapons",
        "Beam Cannon",
        401,
        true,    // unlocked
        false,   // destroyed
        true,    // basic
        false,    // isOwned
        1
    );

    global.systemStatus[3] = SystemStatusConfig(  
		5,		//systemPoints
		"Any",	// ship class
        "primaryWeapons",
        "New Weapon",
        401,
        false,    // unlocked
        false,   // destroyed
        true,    // basic
        false,    // isOwned
        1
    );
	
	global.systemStatus[31] = SystemStatusConfig(  
		0,		//systemPoints
		"Frigate",	// ship class
        "primaryWeapons",
        "Sparrow Plasma Cannon v1",
        401,
        false,    // unlocked
        false,   // destroyed
        true,    // basic
        false,    // isOwned
        1
    );

    // Adding primary weapons individually
    global.primaryWeapons[0] = PrimaryWeaponConfig(
        "Plasma Cannon",
        5,       // delay
        80,      // cooldown
        20,      // capacity
        [-2, 2], // accuracy
        25.0,    // shotSpeed
        30,       // damage
        snd_plasma,
        spr_plasma,
        600,     // range
		"Energy",
        spr_shipSystemsLarge,
        global.systemStatus[0]
    );

    global.primaryWeapons[1] = PrimaryWeaponConfig(
        "Rail Gun",
        2,       // delay
        200.0,   // cooldown
        60,      // capacity
        [-1, 1], // accuracy
        40.0,    // shotSpeed
        2,       // damage
        snd_plasma,
        spr_railGun,
        750,     // range
		"Kinetic",
        spr_shipSystemsLarge,
        global.systemStatus[1]
    );

    global.primaryWeapons[2] = PrimaryWeaponConfig(
        "Beam Cannon",
        0,       // delay
        401.0,   // cooldown
        200,     // capacity
        [-0, 0], // accuracy
        60.0,    // shotSpeed
        0.5,     // damage
        snd_plasma,
        spr_beamCannon,
        401,     // range
		"Energy",
        spr_shipSystemsLarge,
        global.systemStatus[2]
    );

    global.primaryWeapons[3] = PrimaryWeaponConfig(
        "New Weapon",
        0,       // delay
        401.0,   // cooldown
        200,     // capacity
        [-0, 0], // accuracy
        60.0,    // shotSpeed
        0.5,     // damage
        snd_plasma,
        spr_beamCannon,
        401,     // range
		"Kinetic",
        spr_shipSystemsLarge,
        global.systemStatus[3]
    );
	
	global.primaryWeapons[4] = PrimaryWeaponConfig(
        "Sparrow Plasma Cannon v1",
        5,       // delay
        80,      // cooldown
        20,      // capacity
        [-2, 2], // accuracy
        25.0,    // shotSpeed
        1,       // damage
        snd_plasma,
        spr_plasma,
        600,     // range
		"Energy",
        spr_shipSystemsLarge,
        global.systemStatus[31]
    );



    // Initialize the global array of shields
    global.shields = [];

    // Shields System Status
    global.systemStatus[4] = SystemStatusConfig(  
		5,		//systemPoints
		"Any",	// ship class
        "shields",
        "Basic Shields",
        500,
        true,    // unlocked
        false,   // destroyed
        true,    // basic
        false,    // isOwned
        1
    );

    global.systemStatus[5] = SystemStatusConfig(  
		5,		//systemPoints
		"Any",	// ship class
        "shields",
        "Advanced Shields",
        750,
        true,    // unlocked
        false,   // destroyed
        true,    // basic
        false,    // isOwned
        1
    );

    global.systemStatus[6] = SystemStatusConfig(  
		5,		//systemPoints
		"Any",	// ship class
        "shields",
        "Elite Shields",
        1000,
        true,    // unlocked
        false,   // destroyed
        true,    // basic
        false,    // isOwned
        1
    );
	
	global.systemStatus[32] = SystemStatusConfig(  
		0,		//systemPoints
		"Frigate",	// ship class
          "shields",
        "Sparrow Shields v1",
        500,
        false,    // unlocked
        false,   // destroyed
        true,    // basic
        false,    // isOwned
        1
    );

    // Adding shields individually
global.shields[0] = ShieldConfig(
    "Basic Shields",
    2500,        // delay
    2,      // restoreRate
    1,         // uses
    spr_raptorShield,
    spr_raptorShield,
    2000,      // static shield
    1,        // static reduction
    2000,      // active shield
    10,         // active shield consume
    spr_shopUpgrade,
    global.systemStatus[6]
);
		
global.shields[1] = ShieldConfig(
    "Advanced Shields",
    10,        // delay
    2,      // restoreRate
    2,         // uses
    spr_raptorShield,
    spr_raptorShield,
    20,        // static shield
    1,        // static reduction
    2000,      // active shield
    10,         // active shield consume
    spr_shopUpgrade,
    global.systemStatus[6]
);

global.shields[2] = ShieldConfig(
    "Elite Shields",
    2,      // restoreRate
    2000,      // cooldown
    3,         // uses
    spr_raptorShield,
    spr_raptorShield,
    30,        // static shield
    1,        // static reduction
    2000,      // active shield
    10,         // active shield consume
    spr_shopUpgrade,
    global.systemStatus[6]
);

global.shields[3] = ShieldConfig(
    "Sparrow Shields v1",
    2500,        // delay
    2,      // restoreRate
    1,         // uses
    spr_raptorShield,
    spr_raptorShield,
    2000,      // static shield
    1,        // static reduction
    2000,      // active shield
    10,         // active shield consume
    spr_shopUpgrade,
    global.systemStatus[32]
);


    // Initialize the global array of hulls
    global.hulls = [];

// Adding system status configurations for hulls
global.systemStatus[26] = SystemStatusConfig(  
		5,		//systemPoints
	"Any",	// ship class
    "hulls",
    "Standard Hull",
    500,
    true,    // unlocked
    false,   // destroyed
    true,    // basic
    false,    // isOwned
    1
);

global.systemStatus[27] = SystemStatusConfig(  
		5,		//systemPoints
	"Any",	// ship class
    "hulls",
    "Advanced Hull",
    500,
    true,    // unlocked
    false,   // destroyed
    false,    // basic
    false,    // isOwned
    1
);

global.systemStatus[28] = SystemStatusConfig(  
		5,		//systemPoints
	"Frigate",	// ship class
    "hulls",
    "Frigate Hull",
    500,
   true,    // unlocked
    false,   // destroyed
    false,    // basic
    true,    // isOwned
    1
);

global.systemStatus[33] = SystemStatusConfig(  
		0,		//systemPoints
	"Frigate",	// ship class
    "hulls",
    "Sparrow Hull v1",
    500,
    true,    // unlocked
    false,   // destroyed
    true,    // basic
    false,    // isOwned
    1
);

// Adding hulls individually
global.hulls[0] = HullConfig(
    "Standard Hull",      // Name
    100,                  // HP
	3,					  // Repairability
    150,                  // Max HP
    spr_shopUpgrade,      // Shop Sprite
    global.systemStatus[26] // System Status
);

global.hulls[1] = HullConfig(
    "Advanced Hull",      // Name
    125,                  // HP
	4,					  // Repairability
    150,                  // Max HP
    spr_basicTest_1,      // Shop Sprite
    global.systemStatus[27] // System Status
);

global.hulls[2] = HullConfig(
    "Frigate Hull",       // Name
    200,                  // HP
	5,					  // Repairability
    275,                  // Max HP
    spr_shipSystemsLarge, // Shop Sprite
    global.systemStatus[28] // System Status
);

global.hulls[3] = HullConfig(
    "Sparrow Hull v1",      // Name
    100,                  // HP
	3,					  // Repairability
    150,                  // Max HP
    spr_shopUpgrade,      // Shop Sprite
    global.systemStatus[33] // System Status
);



// Initialize the global array of engines
global.engines = [];

// Adding system status configurations for engines
global.systemStatus[34] = SystemStatusConfig(	 
		5,		//systemPoints
	"Any",	// ship class
    "engines",
    "Standard Engine",
    500,
    false,
    true,
    false,
    false,
    1
);

global.systemStatus[29] = SystemStatusConfig(  
		5,		//systemPoints
	"Any",	// ship class
    "engines",
    "Advanced Engine",
    500,
    true,    // unlocked
    false,   // destroyed
    false,    // basic
    true,    // isOwned
    1
);

global.systemStatus[30] = SystemStatusConfig(  
		5,		//systemPoints
	"Any",	// ship class
    "engines",
    "Frigate Engine",
    500,
   true,    // unlocked
    false,   // destroyed
    false,    // basic
    false,    // isOwned
    1
);

global.systemStatus[35] = SystemStatusConfig(	 
		5,		//systemPoints
	"Frigate",	// ship class
    "engines",
    "Sparrow Engine v1",
    500,
    true,    // unlocked
    false,   // destroyed
    true,    // basic
    false,    // isOwned
    1
);

// Adding engines individually
global.engines[0] = EngineConfig(
    "Standard Engine",      // Name
    3.0,                    // Boost Speed
    3.0,                    // Speed
    0,                      // Cooldown
	2,						// Burnup
	1500,					// Fuel Capacity
    spr_shopUpgrade,        // Shop Sprite
    global.systemStatus[34]  // System Status
);

global.engines[1] = EngineConfig(
    "Advanced Engine",      // Name
    4.0,                    // Boost Speed
    5.0,                    // Speed
    1,                      // Cooldown
	2,						// Burnup
	1500,					// Fuel Capacity
    spr_basicTest_1,        // Shop Sprite
    global.systemStatus[29] // System Status
);

global.engines[2] = EngineConfig(
    "Frigate Engine",       // Name
    2.5,                    // Boost Speed
    2.0,                    // Speed
    1,                      // Cooldown
	2,						// Burnup
	1500,					// Fuel Capacity
    spr_shipSystemsLarge,   // Shop Sprite
    global.systemStatus[30] // System Status
);

global.engines[3] = EngineConfig(
    "Sparrow Engine v1.1",       // Name
    2.5,                    // Boost Speed
    2.0,                    // Speed
    1,                      // Cooldown
	2,						// Burnup
	1500,					// Fuel Capacity
    spr_shipSystemsLarge,   // Shop Sprite
    global.systemStatus[35] // System Status
);
   

global.secondaryWeapons = [];

// Adding system status configurations for secondary weapons
global.systemStatus[22] = SystemStatusConfig(  
		5,		//systemPoints
	"Any",	// ship class
    "secondaryWeapons",
    "Missile Launcher",
    500,
   true,    // unlocked
    false,   // destroyed
    true,    // basic
    false,    // isOwned
    1
);

global.systemStatus[23] = SystemStatusConfig(  
		5,		//systemPoints
	"Any",	// ship class
    "secondaryWeapons",
    "Swarm Bomb",
    500,
   true,    // unlocked
    false,   // destroyed
    true,    // basic
    false,    // isOwned
    1
);

global.systemStatus[24] = SystemStatusConfig(  
		5,		//systemPoints
	"Any",	// ship class
    "secondaryWeapons",
    "Energy Cannon",
    500,
    true,    // unlocked
    false,   // destroyed
    true,    // basic
    false,    // isOwned
    1
);

global.systemStatus[25] = SystemStatusConfig(  
		5,		//systemPoints
	"Any",	// ship class
    "secondaryWeapons",
    "New Secondary",
    500,
    false,    // unlocked
    false,   // destroyed
    true,    // basic
    false,    // isOwned
    1
);

global.systemStatus[36] = SystemStatusConfig(  
		5,		//systemPoints
	"Frigate",	// ship class
    "secondaryWeapons",
    "Sparrow Missile Launcher v1",
    500,
   true,    // unlocked
    false,   // destroyed
    true,    // basic
    false,    // isOwned
    1
);

global.systemStatus[38] = SystemStatusConfig(  
		5,		//systemPoints
	"Frigate",	// ship class
    "secondaryWeapons",
    "Big Boy",
    500,
   true,    // unlocked
    false,   // destroyed
    false,    // basic
    true,    // isOwned
    1
);

// Adding secondary weapons individually
global.secondaryWeapons[0] = SecondaryWeaponConfig(
    "Missile Launcher",     // Name
    0,                      // Delay
    45,                     // Cooldown
    1,                      // Capacity
    [-0.5, 0.5],            // Accuracy
    10.0,                   // Shot Speed
    10,                     // Damage
    snd_missile,            // Audio
    spr_missile1,           // Deploy Angle
    750,                    // Projectile Range
	"Kinetic",
    spr_shipSystemsLarge,   // Shop Sprite
    global.systemStatus[22] // System Status
);

global.secondaryWeapons[1] = SecondaryWeaponConfig(
    "Swarm Bomb",           // Name
    0,                      // Delay
    90,                     // Cooldown
    1,                      // Capacity
    [-0, 0],                // Accuracy
    50,                     // Shot Speed
    10,                     // Damage
    snd_missile,            // Audio
    spr_swarmBomb,          // Deploy Angle
    300,                    // Projectile Range
	"Kinetic",
    spr_shipSystemsLarge,   // Shop Sprite
    global.systemStatus[23] // System Status
);

global.secondaryWeapons[2] = SecondaryWeaponConfig(
    "Energy Cannon",        // Name
    0,                      // Delay
    80.0,                   // Cooldown
    1,                      // Capacity
    [-0, 0],                // Accuracy
    25.0,                   // Shot Speed
    5,                      // Damage
    snd_missile,            // Audio
    spr_energyCannon,       // Deploy Angle
    1500,                   // Projectile Range
	"Energy",
    spr_shipSystemsLarge,   // Shop Sprite
    global.systemStatus[24] // System Status
);

global.secondaryWeapons[3] = SecondaryWeaponConfig(
    "New Secondary",        // Name
    0,                      // Delay
    80.0,                   // Cooldown
    1,                      // Capacity
    [-0, 0],                // Accuracy
    25.0,                   // Shot Speed
    5,                      // Damage
    snd_missile,            // Audio
    spr_energyCannon,       // Deploy Angle
    1500,                   // Projectile Range
	"Kinetic",
    spr_shipSystemsLarge,   // Shop Sprite
    global.systemStatus[25] // System Status
);

global.secondaryWeapons[4] = SecondaryWeaponConfig(
    "Sparrow Missile Launcher v1",     // Name
    0,                      // Delay
    45,                     // Cooldown
    1,                      // Capacity
    [-0.5, 0.5],            // Accuracy
    10.0,                   // Shot Speed
    10,                     // Damage
    snd_missile,            // Audio
    spr_missile1,           // Deploy Angle
    750,                    // Projectile Range
	"Kinetic",
    spr_shipSystemsLarge,   // Shop Sprite
    global.systemStatus[36] // System Status
);

global.secondaryWeapons[5] = SecondaryWeaponConfig(
    "Big Boy",     // Name
    0,                      // Delay
    45,                     // Cooldown
    1,                      // Capacity
    [-0.5, 0.5],            // Accuracy
    10.0,                   // Shot Speed
    10,                     // Damage
    snd_missile,            // Audio
    spr_missile1,           // Deploy Angle
    750,                    // Projectile Range
	"Kinetic",
    spr_shipSystemsLarge,   // Shop Sprite
    global.systemStatus[38] // System Status
);


global.sensors = [];

// Adding system status configurations for sensors
global.systemStatus[19] = SystemStatusConfig(  
		27,		//systemPoints
	"Any",	// ship class
    "sensors",
    "Standard Sensor",
    500,
    true,    // unlocked
    false,   // destroyed
    true,    // basic
    true,    // isOwned
    1
);

global.systemStatus[20] = SystemStatusConfig(  
		5,		//systemPoints
	"Any",	// ship class
    "sensors",
    "Advanced Sensor",
    500,
    true,    // unlocked
    false,   // destroyed
    true,    // basic
    true,    // isOwned
    1
);

global.systemStatus[21] = SystemStatusConfig(  
		5,		//systemPoints
	"Any",	// ship class
    "sensors",
    "Hyper Sensor",
    500,
    true,    // unlocked
    false,   // destroyed
    true,    // basic
    true,    // isOwned
    1
);

global.systemStatus[22] = SystemStatusConfig(  
		5,		//systemPoints
	"Interceptor",	// ship class
    "sensors",
    "Integrated Sensor",
    500,
    true,    // unlocked
    false,   // destroyed
    true,    // basic
    true,    // isOwned
    1
);

global.systemStatus[37] = SystemStatusConfig(  
		27,		//systemPoints
	"Frigate",	// ship class
    "sensors",
    "Sparrow Sensors v1",
    500,
    false,    // unlocked
    false,   // destroyed
    true,    // basic
    false,    // isOwned
    1
);

// Adding sensors individually
global.sensors[0] = SensorConfig(
    "Standard Sensor",      // Name 
    3.0,                    // Radius
    3.0,                    // Range
    1,                      // Sensitivity
    spr_shipSystemsLarge,   // Shop Sprite
    global.systemStatus[19] // System Status
);

global.sensors[1] = SensorConfig(
    "Advanced Sensor",      // Name
    4,                      // Radius
    5,                      // Range
    2,                      // Sensitivity
    spr_shipSystemsLarge,   // Shop Sprite
    global.systemStatus[20] // System Status
);

global.sensors[2] = SensorConfig(
    "Hyper Sensor",         // Name
    2.5,                    // Radius
    2.0,                    // Range
    3,                      // Sensitivity
    spr_shipSystemsLarge,   // Shop Sprite
    global.systemStatus[21] // System Status
);

global.sensors[3] = SensorConfig(
    "Integrated Sensor",         // Name
    1,                    // Radius
    2.0,                    // Range
    3,                      // Sensitivity
    spr_shipSystemsLarge,   // Shop Sprite
    global.systemStatus[22] // System Status
);

global.sensors[4] = SensorConfig(
    "Sparrow Sensor v1",      // Name 
    3.0,                    // Radius
    3.0,                    // Range
    1,                      // Sensitivity
    spr_shipSystemsLarge,   // Shop Sprite
    global.systemStatus[37] // System Status
);

}