// Initialize parameters
cx = room_width /2; // Center x
cy = room_height /2; // Center y
a = 200;  // Major radius
b = 150;  // Minor radius
angle = 10;    // Initial angle
debounceTime = 0.2;
lastClickTime = -1;

holoPlanetIndex = 1;
currentPlanet = GetCurrentPlanet();
selectedHoloPlanet = GetPlanetByIndex(holoPlanetIndex);
selectedHoloPlanet = GetPlanetByIndex(holoPlanetIndex);
if (selectedHoloPlanet.unlocked) {
sprite = spr_holoPlanetVenus
}
else {
sprite = spr_holoPlanetVenusLocked;
}