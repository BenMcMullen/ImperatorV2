// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/*
HERES THE DEAL. HERE IS A ROUGH TODO-LIST TO BRING MY GAME TO COMPLETION

U_I_:
BRIEFS SHOULD HAVE 2 SPRITES PER TYPE- A NORMAL COLOR MATCHING SPRITE, AND THAT SPRITE WITH A PLUS IN THE TOP RIGHT CORNER WHEN THERE ARE UPGRADES TO BE WON.
CREATE RANK UP CUTSCENE(?) VISUALS.
REFACTOR GAMECONTROLLER GUI FOR NEW LEVELTYPES AND SUCH
CUTSCENES
UNIFY ALL OF THE DISPLAY TEXTS FOR ALL THE PLACES WITH VENITE LARGE (MEDIUM NEW ONE) AND WHITE.
ADD A DRILL WRHIRRING NOISE WHEN UPGRADING SYSTEMS
CREATE HUD THAT IS ACTIVE DURING MISSIONS- ENCOMPASSES ALL THE EDGES OF THE SCREEN.
GARAGE CHANGES, DRAG AND DROP FIX AND UPGRADE RECEPTACLE. 
ADD CUTSNENE ON LEVEL COMPLETION. SHIP FLYING AWAY?...
VISUAL REPRESENTATION OF PASSIVES


M_E_C_H_A_N_I_C_S_:
FINAL BOSS
ENEMIES SHOULD SPAWN RANDOMLY
"R" SHOULDN'T RESET THE GAME. ESC SHOULD TOGGLE MENU OPTIONS. BACK TO START, RESTART, SAVE, STATS, CONTROLS, ETC.
INSTEAD OF TRIGGERING LEVEL END ON CONTACT WITH INVISIBLE OBJECT, IT SHOULD BE AFTER LEVEL CONDITIONS ARE MET.
ENEMY SCANNER RANGE SHOULD INCREASE THE LONGER A BATTLE GOES
HP HEALING 

A_R_C_H_I_T_E_C_T_U_R_E_:
CREATING ALL LEVEL TYPES
ENEMY TYPES
UPGRADES CAN ONLY FIT IN CERTAIN CLASSES. 
MAYBE WHAT WE DO IS THIS- THERE ARE 4-5 SHIP CLASSES, WITH 3-6 SHIPS PER CLASS. SEVERAL POSSIBLE PASSIVE SETS, LETS SAY 10, BUT THEY ARE FAIRLY CLOSE TO EACH OTHER SO THAT THE SHIPS DON'T VARY TOO WILDLY
SHIPS HAVE AN UPGRADE POINT LIMIT. LIMIT DEPENDS ON CLASS. CLASS SET BY RANK UNLOCKED AT.
EACH UPGRADE HAS ASSIGNED UPGRADE POINTS.
EACH SYSTEM SLOT HAS A MAX POINT VALUE
SCALE DAMAGE, SENSOR RANGE, FIRE RANGE, SPEED, QUANTITY, ENEMYTYPE BASED ON CURRENT RANK.
MAYBE WHAT WE DO IS THIS- THERE ARE 4-5 SHIP CLASSES, WITH 3-6 SHIPS PER CLASS. SEVERAL POSSIBLE PASSIVE SETS, LETS SAY 10, BUT THEY ARE FAIRLY CLOSE TO EACH OTHER SO THAT THE SHIPS DON'T VARY TOO WILDLY
SHIPS HAVE AN UPGRADE POINT LIMIT. LIMIT DEPENDS ON CLASS. CLASS SET BY RANK UNLOCKED AT.
EACH UPGRADE HAS ASSIGNED UPGRADE POINTS.
ENEMY TYPES ARE ASSIGNED TO A LEVEL SOMETIMES RANDOMLY, SOMETIMES PURPOSEFULLY. JUST DEPENDS ON THE LEVEL, SOME LEVELS HAVE SPECIFIC TYPERS


STEALTH MISSION, COMPLETE WITH LIMITED # OF KILLS, PERHAPS EVEN DETECTION. 
COMPLWTING SOME MISSIONS WITHOUT POINT REWARDS?


LEVE TYPE IDEAS: 
hunting: AFter certain time/number of kills new spawns. 
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
	
 I should probably only have 8 rooms per planet, or however many level types there are. these can be easily re-used per level once i procedurally generate enemies and other objects.