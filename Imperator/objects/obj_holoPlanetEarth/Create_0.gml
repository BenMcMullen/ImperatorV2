// Initialize parameters
cx = room_width /2; // Center x
cy = room_height /2; // Center y
a = 300;  // Major radius
b = 250;  // Minor radius
angle = 345;    // Initial angle
debounceTime = 0.2;
lastClickTime = -1;


currentPlanet = GetCurrentPlanet();
holoPlanetIndex = 2;
selectedHoloPlanet = GetPlanetByIndex(holoPlanetIndex);
selectedHoloPlanet = GetPlanetByIndex(holoPlanetIndex);
if (selectedHoloPlanet.unlocked) {
sprite = spr_holoPlanetEarth
}
else {
sprite = spr_holoPlanetEarthLocked;
}