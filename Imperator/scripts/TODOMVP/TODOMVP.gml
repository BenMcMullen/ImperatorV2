// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/*
HERES THE DEAL. HERE IS A ROUGH TODO-LIST TO BRING MY GAME TO MVP


Fix second defense launch. See if we can keep enemies from overlapping Particle beam? enemies aren't patrolling around the ship






A NEW LEVEL, MAYBE A BLACK SCREEN WITH A BIG MESSAGE BREIFING BOX, GIVING YOU TIPS AND EXPECTATIONS ON THE COMING LEVEL TYPE. CLICK TO SKIP.


ADD MORE UPGRADES!
WE START WITH 4 SHIP CLASSES, AND 1 SHIP FOR EACH. THAT MEANS ONE NEW SHIP WITHA  NEW CLASS
3 UNIQUE PASSIVE SETS FOR EACH CLASS, ALL PRETTY CLOSE TO EACH OTHER BUT UNIQUE FROM OTHER CLASSES. 
CREATING 5 NEW LEVEL TYPES
ENEMY TYPES ADD AT LEAST 3 MORE

FINAL BOSS

Frigate level- there are 6 pulse weapons and 2 rocket weapons (new, detonate when within 100 distance of player. this destorys the rocket and creates expanding pulse field that damages- look at hgpt to figure out how)
these weapons, all 8 of them, are matched to locations on the ship. should be achievable with 2 objects. a third object is the shield in front of the frigate.
This shield stays up until the frigate takes x damage. Until this point the frigate won't fire if the projectile is ona  vector to hit it's own shield
but once it's shield goes down its all fair game. squdrans spwan during time based intervels. Oh, and the frigate and weapons stop moving if within firing range of your ship!
Ion attacks can disable the cannons, but not the rocket launchers. Launchers can be destroyed with kinetic rounds after 500+ damage dealt
Go towards a location, the whole time missiles and pulse shots and enemies are flying at you. Along the way there are large asteroids, they are moving at different speeds. There are also ship hulks, enemy frigates and ally frigates. they can all give you shelter temprarily, but the asteroids 
and dead hulks will take damage over time (once they are withing player sensors or maybe POV). The particle cannons will start as a white line, then bloom into massive beam that shakes the screen. instant death?
You are carrying a bomb which will replace secondary. Can be release when it range or some target.



STEALTH MISSION, COMPLETE WITH LIMITED # OF KILLS, PERHAPS EVEN DETECTION. 



LEVE TYPE IDEAS: 
Timed challenge, destroy objects within time frame. No enemies neccesarily, at least at the lower levels. 
Points are awareded based on speed.

Recon, scout and document areas without being discovered.



Mission type: Timed kill challenge


OOH! EMP WEAPON! SECONDARY WITH LARGE SPREAD, SETS ALARM WHICH SKIPS STEP EVENTS ON ENEMIES UNTIL IT WEARS OFF. 
	
 I should probably only have 8 rooms per planet, or however many level types there are. these can be easily re-used per level once i procedurally generate enemies and other objects.