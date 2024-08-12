/// @description Insert description here
// You can write your code in this editor
// obj_asteroid Create Event
// Initialize movement direction and speed
direction = irandom(359); // Random initial direction

rotationSpeed = irandom_range(0.1, 0.5); // Random rotation speed for each asteroid

size = irandom_range(1,3)
hp = 1000;

flyingSpeed = -0.25;
movingLeft = GetObjectDirection(x); 
createImageAngle = 180;

if (movingLeft) {
	flyingSpeed = 0.25
	createImageAngle = 0;
}