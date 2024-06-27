function InitShips() {

    function ShipConfig(_hull, _engine, _primaryWeapon, _secondaryWeapon, _shields, _sensors, _isOwned, _sprites, _x, _y, _shipName, _shipClass, _shipGeneration, _unlocked, _destroyed) {
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
            shipGeneration: _shipGeneration,
          
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

   

 global.systemStatus = [];
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
        "Gen 3 Venuzian",                       // Ship Generation
		true,									// Unlocked
		false									// Destroyed
    );

}