// Initialize parameters
cx = room_width /2; // Center x
cy = room_height /2; // Center y
a = 125;  // Major radius
b = 100;  // Minor radius
speed = 0.00046; // Speed of movement
angle = 245;    // Initial angle
debounceTime = 0.2;
lastClickTime = -1;
holoPlanetIndex = 0;
currentPlanet = GetCurrentPlanet();
selectedHoloPlanet = GetPlanetByIndex(holoPlanetIndex);
selectedHoloPlanet = GetPlanetByIndex(holoPlanetIndex);
if (selectedHoloPlanet.unlocked) {
sprite = spr_holoPlanetMercury;
}
else {
sprite = spr_holoPlanetMercuryLocked;
}