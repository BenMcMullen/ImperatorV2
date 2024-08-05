function InitShips() {

    function ShipConfig(_hull, _engine, _primaryWeapon, _secondaryWeapon, _shields, _sensors, _isOwned, _sprites,_shipName, _shipClass, _passives, _shipGeneration, _unlocked, _destroyed, _systemLimits) {
        return {
            hull: _hull,
            engine: _engine,
            primaryWeapon: _primaryWeapon,
            secondaryWeapon: _secondaryWeapon,
            shields: _shields,
			 sensors: _sensors,
            isOwned: _isOwned,
            sprites: _sprites,
            shipName: _shipName,
            shipClass: _shipClass,
			passives: _passives,
            shipGeneration: _shipGeneration,
            unlocked: _unlocked,
            destroyed: _destroyed,
			systemLimits: _systemLimits
        };
    }

    function ShipSpriteConfig(_id, _name, _spriteStatic, _spriteBoosting, _spriteMoving, _spriteCloaked, _spriteGarage, _spriteHangar) {
        return {
            id: _id,
            name: _name,
            spriteStatic: _spriteStatic,
            spriteBoosting: _spriteBoosting,
            spriteMoving: _spriteMoving,
			spriteCloaked: _spriteCloaked,
            spriteGarage: _spriteGarage,
            spriteHangar: _spriteHangar
        };
    }
	
	function ShipSystemLimits(_shipName, _hullLimit, _engineLimit, _primaryWeaponLimit, _secondaryWeaponLimit, _shieldsLimit, _sensorsLimit) {
        return {
            shipName: _shipName,
            hullLimit: _hullLimit,
            engineLimit: _engineLimit,
            primaryWeaponLimit: _primaryWeaponLimit,
            secondaryWeaponLimit: _secondaryWeaponLimit,
            shieldsLimit: _shieldsLimit,
			sensorsLimit: _sensorsLimit,
        };
    }

	
	function passivesConfig(_class, _tier, _distortion, _evasion, _hotShot, _fov, _bumper, _cloaking, _enhancedArmory, _veteranCrew, _enhancedCoolingUnit, _activeEnergyDispersionUnit, _passiveEnergyDispersionUnit, _ionShielding) {
   
        return {
			//the class of ship this passive can be applied to
			class : _class,
			//tier of passive quality
			tier: _tier,
			//reduces enemy sensor range
			distortion: _distortion,
			//adds slightt miss chance
			evasion: _evasion,
			//decreases range variance on weapons
			hotShot: _hotShot,
			//increases size of player camera
			fov: _fov,
			//keeps ship's alive on collision but reduces hp to the bumper value
			bumper: _bumper, 
			//completely negates enemy sensors for a number of frames, unless you boost or shoot
			cloaking: _cloaking,
			//increases hp by a percentage
			enhancedArmory: _enhancedArmory,
			//reduces cooldown
			veteranCrew: _veteranCrew,
			//increases shield recharge time
			enhancedCoolingUnit: _enhancedCoolingUnit,
			//increased damage soak on active shields
			activeEnergyDispersionUnit: _activeEnergyDispersionUnit,
			//increased damage soak on passive shields
			passiveEnergyDispersionUnit: _passiveEnergyDispersionUnit,
			//reduction in ion damage taken
			ionShielding: _ionShielding
			
           
        };
    }

   
  
   
	global.passives = [];
	
	 global.passives[0] = passivesConfig(
    "Interceptor",      // _class
    "A",            // _tier
    2,            // _distortion (50% reduces range of enemy detection) 1-2
    1.15,           // _evasion (15% chance to evade attacks) 1-2
    2,            // _hotShot (90% more accurate fire) 1-2
    1,            // _fov (90% wider field of view) 1 is base. 1-2
    20,             // _bumper (reduces HP to 20 on collision) 20-100
    300,            // _cloaking (negates enemy sensors for 300 frames) 0 - 1000
    1.5,           // _enhancedArmory (50% increase in primary capacity) 1-2
    1.5,            // _veteranCrew (50% reduction in weapons cooldown)
	1,				//_enhancedCoolingUnit (+1 shield restore per step)
	1,				//_activeEnergyDispersionUnit (-1 damage soak on active shields )
	1,				//_passiveEnergyDispersionUnit (-1 damage soak on passive shields )
	1.5				//_ionShielding (50% reduction in ion damage taken)
);

 global.passives[1] = passivesConfig(
    "Frigate",      // _class
    "B",            // _tier
    1.45,            // _distortion (reduces range of enemy detection)
    1.35,           // _evasion (0% chance to evade attacks)
    1.2,            // _hotShot (0% more accurate fire)
    1.75,            // _fov (20% wider field of view)
    80,             // _bumper (reduces HP to 0 on collision)
    850,            // _cloaking (negates enemy sensors for 0 frames)
    1.0,           // _enhancedArmory (0% increase in primary capacity)
    1.0,            // _veteranCrew (0% reduction in cooldown) 1-2
	11,				//_enhancedCoolingUnit (+1 shield restore per step)
	17,				//_activeEnergyDispersionUnit (-1 damage soak on active shields )
	4,				//_passiveEnergyDispersionUnit (-1 damage soak on passive shields )
	1.5				//_ionShielding (50% reduction in ion damage taken)
);
global.passives[2] = passivesConfig(
    "Frigate",      // _class
    "A",            // _tier
    1,            // _distortion (reduces range of enemy detection)
    1,           // _evasion (0% chance to evade attacks)
   1,            // _hotShot (0% more accurate fire)
    1,            // _fov (20% wider field of view)
    10,             // _bumper (reduces HP to 0 on collision)
    10,            // _cloaking (negates enemy sensors for 0 frames)
    1.0,           // _enhancedArmory (0% increase in primary capacity)
    1.0,            // _veteranCrew (0% reduction in cooldown) 1-2
	1,				//_enhancedCoolingUnit (+1 shield restore per step)
	1,				//_activeEnergyDispersionUnit (-1 damage soak on active shields )
	1,				//_passiveEnergyDispersionUnit (-1 damage soak on passive shields )
	1.5				//_ionShielding (50% reduction in ion damage taken)
);
global.passives[3] = passivesConfig(
    "Frigate",      // _class
    "C",            // _tier
    2,            // _distortion (reduces range of enemy detection)
    2,           // _evasion (0% chance to evade attacks)
	2,            // _hotShot (0% more accurate fire)
    2,            // _fov (20% wider field of view)
    80,             // _bumper (reduces HP to 0 on collision)
    10000,            // _cloaking (negates enemy sensors for 0 frames)
    2.0,           // _enhancedArmory (0% increase in primary capacity)
    2.0,            // _veteranCrew (0% reduction in cooldown) 1-2
	20,				//_enhancedCoolingUnit (+1 shield restore per step)
	20,				//_activeEnergyDispersionUnit (-1 damage soak on active shields )
	10,				//_passiveEnergyDispersionUnit (-1 damage soak on passive shields )
	1.5				//_ionShielding (50% reduction in ion damage taken)
);
	
    global.sprites = [];

    global.sprites[0] = ShipSpriteConfig(
        1,
        "Finch",             // Ship Name
        spr_finchStatic,     // Static sprite
        spr_finchBoosting,   // Boosting sprite
        spr_finMoving,     // Moving sprite
		spr_finchCloaked,	// Cloaked sprite
        spr_finchGarage,     // Garage sprite
        spr_finchHangar      // Hangar Sprite
    );

    global.sprites[1] = ShipSpriteConfig(
        2,
        "Raptor",             // Ship Name
        spr_raptorStatic,     // Static sprite
        spr_raptorBoosting,   // Boosting sprite
        spr_raptorMoving,     // Moving sprite
		spr_raptorCloaked,	// Cloaked sprite
        spr_raptorGarage,     // Garage sprite
        spr_raptorHangar      // Hangar Sprite
    );

    global.sprites[2] = ShipSpriteConfig(
        3,
        "Sparrow",             // Ship Name
        spr_sparrowStatic,     // Static sprite
        spr_sparrowBoosting,   // Boosting sprite
        spr_sparrowMoving,     // Moving sprite
		spr_finchCloaked,	// Cloaked sprite
        spr_sparrowGarage,     // Garage sprite
        spr_sparrowHangar      // Hangar Sprite
    );
	
	global.systemLimits = [];
	

    // Adding ship sprite configurations individually
    global.systemLimits[0] = ShipSystemLimits(
        "Finch",             // Ship Name
        4,					 // hullLimit
        9,					 // engineLimit
        6,					 // primaryWeaponLimit
		6,					 // secondaryWeaponLimit
        4,					 // shieldsLimit
        6					 // sensorsLimit
    );

    global.systemLimits[1] = ShipSystemLimits(
        "Sparrow",             // Ship Name
        10,					 // hullLimit
        7,					 // engineLimit
        4,					 // primaryWeaponLimit
		5,					 // secondaryWeaponLimit
        10,					 // shieldsLimit
        10					 // sensorsLimit
    );

    global.systemLimits[2] = ShipSystemLimits(
        "Raptor",             // Ship Name
        3,					 // hullLimit
        8,					 // engineLimit
        10,					 // primaryWeaponLimit
		7,					 // secondaryWeaponLimit
        4,					 // shieldsLimit
        9					 // sensorsLimit
    );



    
    // Initialize the global array of player ships
	 global.playerShips = [];
    // Adding ships individually and assigning engines
    global.playerShips[0] = ShipConfig(
        global.hulls[1],                        // Hull
        global.engines[1],                      // Engine
        global.primaryWeapons[0],               // Primary Weapon
        global.secondaryWeapons[6],             // Secondary Weapon
        global.shields[1],                      // Shields
        global.sensors[2],                      // Sensors
        true,                                   // Is Owned
        global.sprites[0],                      // Sprites
        "Finch",                                // Ship Name
        "Scout",                                // Ship Class
		global.passives[3],						// Ship Passives
        "Gen 4 Mercurian",                      // Ship Generation
		true,									// Unlocked
		false,									// Destroyed
		global.systemLimits[0]					// System Limits
    );

    global.playerShips[1] = ShipConfig(
        global.hulls[1],                        // Hull
        global.engines[1],                      // Engine
        global.primaryWeapons[1],               // Primary Weapon
        global.secondaryWeapons[0],				// Secondary Weapon
		global.shields[0],                      // Shields
		global.sensors[2],                      // Sensors
        false,                                  // Is Owned
        global.sprites[1],                      // Sprites
        "Raptor",                               // Ship Name
        "Interceptor",                          // Ship Class
		global.passives[1],						// Ship Passives
        "Gen 5 Venuzian",                       // Ship Generation
		false,									// Unlocked
		false,									// Destroyed
		global.systemLimits[1]					// System Limits
    );

    global.playerShips[2] = ShipConfig(
        global.hulls[3],						// Hull
        global.engines[3],						// Engine
        global.primaryWeapons[4],				// Primary Weapon
        global.secondaryWeapons[4],				// Secondary Weapon
		global.shields[3],						// Shields
		global.sensors[2],						// Sensors
        false,                                  // Is Owned
        global.sprites[2],						// Sprites
        "Sparrow",                              // Ship Name
        "Frigate",								// Ship Class
		noone,									// Ship Passives
        "Gen 3 Venuzian",                       // Ship Generation
		true,									// Unlocked
		false,									// Destroyed
		global.systemLimits[1]					// System Limits
    );
	
	   global.playerShips[3] = ShipConfig(
        global.hulls[2],									// Hull
        global.engines[1],									// Engine
        global.primaryWeapons[1],									// Primary Weapon
        global.secondaryWeapons[1],									// Secondary Weapon
		global.shields[1],									// Shields
		global.sensors[1],									// Sensors
        true,                                   // Is Owned
        global.sprites[2],						// Sprites
        "Sparrow V2",                              // Ship Name
        "Frigate",								// Ship Class
		global.passives[0],						// Ship Passives
        "Gen 3 Venuzian",                       // Ship Generation
		true,									// Unlocked
		false,									// Destroyed
		global.systemLimits[1]					// System Limits
    );

}