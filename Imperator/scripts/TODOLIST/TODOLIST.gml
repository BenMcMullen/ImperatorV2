// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/*
HERES THE DEAL. HERE IS A ROUGH TODO-LIST TO BRING MY GAME TO COMPLETION

MINI MAP //DONE
SENSORS //DONE
SMOOTH TURNING, REVERSE ANIMATION. TURN RADIUS //DONE
SAVING //DONE
RIGHT CLICK DESCRIBE EVENTS ON SHOP AND GARAGE //DONE
UPGRADE PURCHASING //DONE
SHIP UPGRADING //DONE
MISSION TREES //DONE
PLANET BASED MISSIONS //DONE
ADD A MANILLA FOLDER THING FOR MISSION BRIEFS. SELECTING THE BRIEF WILL SET THE CORRENT INDICES //DONE
CHOOSING MISSIONS// DONE
HYDROLIC SHOP DOORS OPEN, AND IF YOU RESELCT THEY CLOSE THEN OPEN AGAIN//DONE
IMPLEMENT COMMENDATIONS UI //DONE
TYPES OF MISSIONS- ARCHITECTURE //DONE
ADD BACK POINTS TO SHOP //DONE
MIGRATE SYSTEM UPGRADE STATUS FIELDS TO NEW ARRAY //DONE
REMOVE NON BASIC UPGRADES ON DEATH //DONE
PLANET SELECTION //DONE
UPDATE GALAXY BUTTON //DONE
ADD LOCKED PLANET SYSTEM AND SPRITES //DONE
PLANET CONFIRMATION SCREENS, AND HOVERING PLANET NAME TEXT. //DONE
UNLOCKING UPGRADES AT LVL COMPLETION //DONE
CLOAKING? PASSIVE ON SHIP, REDUCES ENEMY DETECTION RANGE 9ALL SHIPS HAVE, DETECTION TAKES THIS INTO ACCT. /./DONE
EVASION PASSIVE, EFFECTS % HIT.  //DONE
EXPERIENCED CREW PASSIVE, REDUCE RELOAD TIME //DONE
HOTSHOT CREW PASSIVE IMPROVES ACCURACY // DONE
FOV PASSIVE // DONE
ENEMY AI// DONE
INSTEAD OF TRIGGERING LEVEL END ON CONTACT WITH INVISIBLE OBJECT, IT SHOULD BE AFTER LEVEL CONDITIONS ARE MET. //DONE




U_I_:
BRIEFS SHOULD HAVE 2 SPRITES PER TYPE- A NORMAL COLOR MATCHING SPRITE, AND THAT SPRITE WITH A PLUS IN THE TOP RIGHT CORNER WHEN THERE ARE UPGRADES TO BE WON.
CREATE RANK UP CUTSCENE(?) VISUALS.
REFACTOR GAMECONTROLLER GUI FOR NEW LEVELTYPES AND SUCH
CUTSCENES
UNIFY ALL OF THE DISPLAY TEXTS FOR ALL THE PLACES WITH VENITE LARGE (MEDIUM NEW ONE) AND WHITE.
ADD A DRILL WRHIRRING NOISE WHEN UPGRADING SYSTEMS
CREATE HUD THAT IS ACTIVE DURING MISSIONS- ENCOMPASSES ALL THE EDGES OF THE SCREEN.
RIGHT CICK PLANET INFO
GARAGE CHANGES, DRAG AND DROP FIX AND UPGRADE RECEPTACLE. 
SHOW BRIEFS WITH DIFFERENT ICON WHEN UPGRADE IS AVAILABLE. 
ADD CUTSNENE ON LEVEL COMPLETION. SHIP FLYING AWAY?...
LEVELS SHOULD HAVE CORRECT PLANET IN THE BACKGROUND, AND THE SAME STARSCAPE
I need to configure planets and background to do the movement thing where they seem far far away
VISUAL REPRESENTATION OF PASSIVES



M_E_C_H_A_N_I_C_S_:
FINAL BOSS
CONSIDER A SYSTEM WHERE SHIELDS REFRESH, BUT HP DOESN'T REPAIRS ARE REQURIED. POSSIBLY ENGINE BURNOUT, ENERGY CELLS ETC.
FORCE BRIEF SELECTION ATER PLANET CHANGE, ENFORCED WITH GRAYED OUT HANGAR BUTTON AND IMPERATOR CHAT. THIS IS MOSTLY RELEVENT FOR RANK CHANGES
ENEMIES SHOULD SPAWN RANDOMLY?
"R" SHOULDN'T RESET THE GAME. ESC SHOULD TOGGLE MENU OPTIONS. BACK TO START, RESTART, SAVE, STATS, CONTROLS, ETC.
SHIFT TO ACTIVATE PULSE SHIELD
ENEMY SCANNER RANGE SHOULD INCREASE THE LONGER A BATTLE GOES

A_R_C_H_I_T_E_C_T_U_R_E_:
CONSIDER OPENING CAMERA OBJECT TO INCREASE FOV
CREATING ALL LEVEL TYPES
ENEMY TYPES
SHIP PASSIVES
CONSIDER CREATION OF A INITGLOBALS SCRIPT



STEALTH MISSION, COMPLETE WITH LIMITED # OF KILLS, PERHAPS EVEN DETECTION. 
COMPLWTING SOME MISSIONS WITHOUT POINT REWARDS?





levels have points awarded, possible unlocks, and commendations. Required commendations for level up, once your surpass them, its a different bridge cutscene maybe. 
Points awarded tie to difficulty of the mission- maybe have a difficulty rating as well? stars, perhaps? Missions with unlocks typically provide very few to no point bonuses,
and have higher than average commendations so you have to choose.
I think i DEFINITELY want hp to stick with the ship, And you have to choose to repair it from the garage. 


LEVE TYPE IDEAS: 
Timed challenge, destroy objects within time frame. No enemies neccesarily, at least at the lower elvels. 
Points are awareded based on speed.

Specific targets- unlimited waves of weak ships, gotta kill the primary targets and escape.

Recon, scout and document areas without being discovered.

Escort missions. 

Asteroid Breaker overloads shields temporarily when hitting other shields

Mission type: Timed kill challenge
	diffuclty scaling time
	difficulty scaling enemy weapons and armor
	difficulty scaling enemy quantity?


SHIP CAHNGES:
Then, for each ship, it has between 4-0 of it's systems locked. this is random?
So you can have 3 of the same ship type, but they can be totally different.
Means you are not always upgrading the same ship, gotta pick what you have that works
also means purchasing upgrades depends on what ship you are running. makes shopping mroe dynamic