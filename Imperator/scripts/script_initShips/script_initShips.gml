function InitShips() {

    function ShipConfig(_hull, _engine, _primaryWeapon, _secondaryWeapon, _shields, _sensors, _isOwned, _sprites, _x, _y, _shipName, _shipClass, _passives, _shipGeneration, _unlocked, _destroyed) {
        return {
            hull: _hull,
            engine: _engine,
            primaryWeapon: _primaryWeapon,
            secondaryWeapon: _secondaryWeapon,
            shields: _shields,
			 sensors: _sensors,
            isOwned: _isOwned,
            sprites: _sprites,
            x: _x,
            y: _y,
            shipName: _shipName,
            shipClass: _shipClass,
			passives: _passives,
            shipGeneration: _shipGeneration,
            unlocked: _unlocked,
            destroyed: _destroyed
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
	
	

	
	function passivesConfig(_class, _tier, _distortion, _evasion, _hotShot, _fov, _bumper, _cloaking, _enhancedArmory, _asteroidBreaker, _veteranCrew) {
   
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
			//Punches through asteroids or weakened enemies
			asteroidBreaker: _asteroidBreaker,
			//reduces cooldown
			veteranCrew: _veteranCrew
			
           
        };
    }

   
  
   
	global.passives = [];
	
	 global.passives[0] = passivesConfig(
    "Interceptor",      // _class
    "A",            // _tier
    0.5,            // _distortion (50% reduces range of enemy detection)
    0.1,           // _evasion (15% chance to evade attacks)
    .9,            // _hotShot (90% more accurate fire)
    1,            // _fov (90% wider field of view) 1 is base.
    20,             // _bumper (reduces HP to 20 on collision)
    300,            // _cloaking (negates enemy sensors for 300 frames)
    1.5,           // _enhancedArmory (50% increase in primary capacity)
    .2,            // asteroidBreaker (breaks enemy ships at 20% enemy hp cost)
    0.5            // _veteranCrew (50% reduction in weapons cooldown)
);

 global.passives[1] = passivesConfig(
    "Frigate",      // _class
    "B",            // _tier
    0.0,            // _distortion (reduces range of enemy detection)
    0.0,           // _evasion (0% chance to evade attacks)
    0.0,            // _hotShot (0% more accurate fire)
    1.2,            // _fov (20% wider field of view)
    0.0,             // _bumper (reduces HP to 0 on collision)
    0.0,            // _cloaking (negates enemy sensors for 0 frames)
    1.0,           // _enhancedArmory (0% increase in primary capacity)
    .2,            // asteroidBreaker (breaks enemy ships at 100% enemy hp cost)
    1.0            // _veteranCrew (0% reduction in cooldown)
);
	
    global.sprites = [];

    // Adding ship sprite configurations individually
    global.sprites[0] = ShipSpriteConfig(
        1,
        "WASP",             // Ship Name
        spr_waspStatic,     // Static sprite
        spr_waspBoosting,   // Boosting sprite
        spr_waspMoving,     // Moving sprite
		spr_waspCloaked,	// Cloaked sprite
        spr_waspGarage,     // Garage sprite
        spr_waspHangar      // Hangar Sprite
    );

    global.sprites[1] = ShipSpriteConfig(
        2,
        "RAPTOR",             // Ship Name
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
		spr_waspCloaked,	// Cloaked sprite
        spr_sparrowGarage,     // Garage sprite
        spr_sparrowHangar      // Hangar Sprite
    );



    
    // Initialize the global array of player ships
	 global.playerShips = [];
    // Adding ships individually and assigning engines
    global.playerShips[0] = ShipConfig(
        global.hulls[1],                        // Hull
        global.engines[1],                      // Engine
        global.primaryWeapons[0],               // Primary Weapon
        global.secondaryWeapons[0],             // Secondary Weapon
        global.shields[1],                      // Shields
        global.sensors[1],                      // Sensors
        true,                                   // Is Owned
        global.sprites[0],                      // Sprites
        100,                                    // Hangar X position
        100,                                    // Hangar Y position
        "Wasp",                                 // Ship Name
        "Scout",                                // Ship Class
		global.passives[0],					// Ship Passives
        "Gen 4 Mercurian",                      // Ship Generation
		true,									// Unlocked
		false									// Destroyed
    );

    global.playerShips[1] = ShipConfig(
        global.hulls[1],                        // Hull
        global.engines[1],                      // Engine
        global.primaryWeapons[1],               // Primary Weapon
        global.secondaryWeapons[0],									// Secondary Weapon
		global.shields[0],                      // Shields
		global.sensors[2],                      // Sensors
        true,                                   // Is Owned
        global.sprites[1],                      // Sprites
        200,                                    // Hangar X position
        100,                                    // Hangar Y position
        "Raptor",                               // Ship Name
        "Interceptor",                          // Ship Class
		global.passives[0],					// Ship Passives
        "Gen 5 Venuzian",                       // Ship Generation
		true,									// Unlocked
		false									// Destroyed
    );

    global.playerShips[2] = ShipConfig(
        noone,										// Hull
        noone,										// Engine
        noone,										// Primary Weapon
        noone,										// Secondary Weapon
		noone,										// Shields
		noone,										// Sensors
        true,                                   // Is Owned
        global.sprites[2],						// Sprites
        300,                                    // Hangar X position
        100,                                    // Hangar Y position
        "Sparrow",                              // Ship Name
        "Frigate",								// Ship Class
		global.passives[0],					// Ship Passives
        "Gen 3 Venuzian",                       // Ship Generation
		true,									// Unlocked
		false									// Destroyed
    );

}