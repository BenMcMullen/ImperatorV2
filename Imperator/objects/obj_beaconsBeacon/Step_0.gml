// Check if the beacon is active and has taken damage
if (shieldDown && hp <= 0) {
    shieldDown = false;
    // Increment the count of destroyed active beacons
   with (manager){
	   beaconsOverloaded++;
            // Activate the next beacon
            WeakenNextBeacon();
   }
      
}
