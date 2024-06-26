function InitSystems() {
    
    // Function to define system status configurations
    function SystemStatusConfig(_system, _name, _cost, _unlocked, _destroyed, _basic, _isOwned, _quantity) {
        return {
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
    function ShieldConfig(_id, _name, _delay, _cooldown, _uses, _spriteStatic, _spriteActive, _shieldStatic, _shieldStaticMax, _shieldActive, _systemSprite, _systemStatus) {
        return {
            id: _id,
            name: _name,
            delay: _delay,
            cooldown: _cooldown,
            uses: _uses,
            spriteStatic: _spriteStatic,
            spriteActive: _spriteActive,
            shieldStatic: _shieldStatic,
            shieldStaticMax: _shieldStaticMax,
            shieldActive: _shieldActive,
            systemSprite: _systemSprite,
            systemStatus: _systemStatus
        };
    }

    // Function to define hull configurations
    function HullConfig(_id, _name, _hp, _maxHp, _systemSprite, _systemStatus) {
        return {
            id: _id,
            name: _name,
            hp: _hp,
            maxHp: _maxHp,
            systemSprite: _systemSprite,
            systemStatus: _systemStatus
        };
    }

    // Function to define secondary weapon configurations
    function SecondaryWeaponConfig(_name, _delay, _cooldown, _capacity, _accuracy, _shotSpeed, _damage, _audio, _sprite, _range, _systemSprite, _systemStatus) {
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
            systemSprite: _systemSprite,
            systemStatus: _systemStatus
        };
    }

    // Function to define primary weapon configurations
    function PrimaryWeaponConfig(_name, _delay, _cooldown, _capacity, _accuracy, _shotSpeed, _damage, _audio, _sprite, _range, _systemSprite, _systemStatus) {
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
            systemSprite: _systemSprite,
            systemStatus: _systemStatus
        };
    }

    // Function to define sensor configurations
    function SensorConfig(_id, _name, _radius, _range, _sensitivity, _systemSprite, _systemStatus) {
        return {
            id: _id,
            name: _name,
            radius: _radius,
            range: _range,
            sensitivity: _sensitivity,
            systemSprite: _systemSprite,
            systemStatus: _systemStatus
        };
    }

    // Function to define engine configurations
    function EngineConfig(_id, _name, _boostSpeed, _speed, _cooldown, _systemSprite, _systemStatus) {
        return {
            id: _id,
            name: _name,
            boostSpeed: _boostSpeed,
            speed: _speed,
            cooldown: _cooldown,
            systemSprite: _systemSprite,
            systemStatus: _systemStatus
        };
    }

    // Initialize the global array of primary weapons
    global.primaryWeapons = [];

    // Primary Weapons System Status
    global.systemStatus[0] = SystemStatusConfig(
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
        "primaryWeapons",
        "New Weapon",
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
        1,       // damage
        snd_plasma,
        spr_plasma,
        600,     // range
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
        spr_shipSystemsLarge,
        global.systemStatus[3]
    );


    // Initialize the global array of shields
    global.shields = [];

    // Shields System Status
    global.systemStatus[4] = SystemStatusConfig(
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
        "shields",
        "Elite Shields",
        1000,
        true,    // unlocked
        false,   // destroyed
        true,    // basic
        false,    // isOwned
        1
    );

    // Adding shields individually
    global.shields[0] = ShieldConfig(
        1,
        "Basic Shields",
        0.5,      // delay
        1.0,      // cooldown
        1,        // uses
        spr_basicTest_1,
        spr_shopUpgrade,
        10,       // static shield
        10,       // max static shield
        20,       // active shield
        spr_shopUpgrade,
        global.systemStatus[6]
    );

    global.shields[1] = ShieldConfig(
        2,
        "Advanced Shields",
        0.3,      // delay
        1.5,      // cooldown
        2,        // uses
        spr_basicTest_1,
        spr_shopUpgrade,
        20,       // static shield
        20,       // max static shield
        40,       // active shield
        spr_shopUpgrade,
        global.systemStatus[6]
    );
    global.shields[2] = ShieldConfig(
        3,
        "Elite Shields",       // Name
        0.2,                    // Delay
        2.0,                    // Cooldown
        3,                      // Uses
        spr_basicTest_1,        // Static sprite
        spr_shopUpgrade,        // Active sprite
        30,                     // Static shield
        30,                     // Max static shield
        60,                     // Active shield
        spr_shopUpgrade,        // System sprite
		global.systemStatus[6] // System Status
    );


    // Initialize the global array of hulls
    global.hulls = [];

// Adding system status configurations for hulls
global.systemStatus[26] = SystemStatusConfig(
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
    "hulls",
    "Frigate Hull",
    500,
   true,    // unlocked
    false,   // destroyed
    true,    // basic
    false,    // isOwned
    1
);

// Adding hulls individually
global.hulls[0] = HullConfig(
    1,
    "Standard Hull",      // Name
    100,                  // HP
    100,                  // Max HP
    spr_shopUpgrade,      // Shop Sprite
    global.systemStatus[26] // System Status
);

global.hulls[1] = HullConfig(
    2,
    "Advanced Hull",      // Name
    150,                  // HP
    150,                  // Max HP
    spr_basicTest_1,      // Shop Sprite
    global.systemStatus[27] // System Status
);

global.hulls[2] = HullConfig(
    3,
    "Frigate Hull",       // Name
    200,                  // HP
    200,                  // Max HP
    spr_shipSystemsLarge, // Shop Sprite
    global.systemStatus[28] // System Status
);


// Initialize the global array of engines
global.engines = [];

// Adding system status configurations for engines
global.systemStatus[0] = SystemStatusConfig(
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
    "engines",
    "Frigate Engine",
    500,
   true,    // unlocked
    false,   // destroyed
    false,    // basic
    false,    // isOwned
    1
);

// Adding engines individually
global.engines[0] = EngineConfig(
    1,
    "Standard Engine",      // Name
    3.0,                    // Boost Speed
    3.0,                    // Speed
    0,                      // Cooldown
    spr_shopUpgrade,        // Shop Sprite
    global.systemStatus[0]  // System Status
);

global.engines[1] = EngineConfig(
    2,
    "Advanced Engine",      // Name
    4.0,                    // Boost Speed
    5.0,                    // Speed
    0,                      // Cooldown
    spr_basicTest_1,        // Shop Sprite
    global.systemStatus[29] // System Status
);

global.engines[2] = EngineConfig(
    3,
    "Frigate Engine",       // Name
    2.5,                    // Boost Speed
    2.0,                    // Speed
    0,                      // Cooldown
    spr_shipSystemsLarge,   // Shop Sprite
    global.systemStatus[30] // System Status
);
   

global.secondaryWeapons = [];

// Adding system status configurations for secondary weapons
global.systemStatus[22] = SystemStatusConfig(
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
    "secondaryWeapons",
    "New Secondary",
    500,
    false,    // unlocked
    false,   // destroyed
    true,    // basic
    false,    // isOwned
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
    spr_shipSystemsLarge,   // Shop Sprite
    global.systemStatus[25] // System Status
);


global.sensors = [];

// Adding system status configurations for sensors
global.systemStatus[19] = SystemStatusConfig(
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
    "sensors",
    "Integrated Sensor",
    500,
    false,    // unlocked
    false,   // destroyed
    true,    // basic
    false,    // isOwned
    1
);

// Adding sensors individually
global.sensors[0] = SensorConfig(
    1,
    "Standard Sensor",      // Name 
    3.0,                    // Radius
    3.0,                    // Range
    1,                      // Sensitivity
    spr_shipSystemsLarge,   // Shop Sprite
    global.systemStatus[19] // System Status
);

global.sensors[1] = SensorConfig(
    2,
    "Advanced Sensor",      // Name
    4,                      // Radius
    5,                      // Range
    2,                      // Sensitivity
    spr_shipSystemsLarge,   // Shop Sprite
    global.systemStatus[20] // System Status
);

global.sensors[2] = SensorConfig(
    3,
    "Hyper Sensor",         // Name
    2.5,                    // Radius
    2.0,                    // Range
    3,                      // Sensitivity
    spr_shipSystemsLarge,   // Shop Sprite
    global.systemStatus[21] // System Status
);

global.sensors[2] = SensorConfig(
    3,
    "Integrated Sensor",         // Name
    1,                    // Radius
    2.0,                    // Range
    3,                      // Sensitivity
    spr_shipSystemsLarge,   // Shop Sprite
    global.systemStatus[22] // System Status
);

}