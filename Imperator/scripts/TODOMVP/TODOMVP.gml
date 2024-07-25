// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/*
HERES THE DEAL. HERE IS A ROUGH TODO-LIST TO BRING MY GAME TO COMPLETION

U_I_:
BRIEFS ARE COLOR CODED TO MISSION TYPE. SECONDARY SPRITE INDEX WITH A PLUS IN THE CORNER FOR UPGRADES.
ADD A DRILL WRHIRRING NOISE WHEN UPGRADING SYSTEMS
UPDATE HUD WITH RELEVENT INFO, INCLUDING LEVEL SPECIFIC AND AI COMMENTS
ADD CUTSNENE ON LEVEL COMPLETION. SHIP FLYING AWAY?...


M_E_C_H_A_N_I_C_S_:
FINAL BOSS
RECONSIDER HOW WE DO ITEM DELETION
ADD MORE ITEMS!

A_R_C_H_I_T_E_C_T_U_R_E_:
WE START WITH 4 SHIP CLASSES, AND 1 SHIP FOR EACH. THAT MEANS ONE NEW SHIP WITHA  NEW CLASS
3 UNIQUE PASSIVE SETS FOR EACH CLASS, ALL PRETTY CLOSE TO EACH OTHER BUT UNIQUE FROM OTHER CLASSES. 



CREATING 5 NEW LEVEL TYPES
FIX ESCORT LEVEL

SCALE ENEMY HP AND DAMAGE WITH DIFFICULTY AND RANK
ENEMY TYPES ADD AT LEAST 3 MORE

NOT ALL LEVELS CAN HAVE ASTEROIDS- END GAME EVERY EVEL TYPE CAN HAVE THEM, EARLY ONLY A FEW AND TEH ASTEROIDS ARE LESS. MORE POINTS FOR ROID LEVELS
EACH LEVELTYPE OBJ HAS LOGIC FOR IF ASTEROIDS IS TRUE ON CURRENT LEVEL, IN WHICH CASE CREATE SYSTEM TO RANDOMLY PLACE THEM.

CHANGE MINIMAP TO BE AREA AROUND PLAYER. THAT AREA GROWS BASED ON SENSOR





STEALTH MISSION, COMPLETE WITH LIMITED # OF KILLS, PERHAPS EVEN DETECTION. 



LEVE TYPE IDEAS: 
Timed challenge, destroy objects within time frame. No enemies neccesarily, at least at the lower levels. 
Points are awareded based on speed.

Specific targets- Pretty much the exact same as hunt mission, but have new enemy type. Faster, strong, and maybe they run away if you are 
in close range? they want to fire from a distance, so they close on you then run as you shoot as them.
Everytime you kill one set global var to ++, once it reaches mission requirements then we are done. 

Recon, scout and document areas without being discovered.



Mission type: Timed kill challenge


OOH! EMP WEAPON! SECONDARY WITH LARGE SPREAD, SETS ALARM WHICH SKIPS STEP EVENTS ON ENEMIES UNTIL IT WEARS OFF. 
	
 I should probably only have 8 rooms per planet, or however many level types there are. these can be easily re-used per level once i procedurally generate enemies and other objects.