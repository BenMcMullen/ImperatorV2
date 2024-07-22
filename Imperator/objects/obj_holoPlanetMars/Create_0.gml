// Initialize parameters
cx = room_width /2; // Center x
cy = room_height /2; // Center y
a = 400;  // Major radius
b = 350;  // Minor radius
angle = 45;    // Initial angle
debounceTime = 0.2;
lastClickTime = -1;
holoPlanetIndex = 3;
currentPlanet = GetCurrentPlanet();
selectedHoloPlanet = GetPlanetByIndex(holoPlanetIndex);

if (selectedHoloPlanet.unlocked) {
sprite = spr_holoPlanetMars;
}
else {
sprite = spr_holoPlanetMarsLocked;
}