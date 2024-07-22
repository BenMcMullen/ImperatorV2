function EscortMovement(){
    // Define the speed of the escort ship

  var escortDirection = point_direction(x, y, finalDestinationX, finalDestinationY);
var distance = point_distance(x, y, finalDestinationX, finalDestinationY);

// Move towards the final destination if the distance is greater than the speed
if (distance > escortSpeed) {
    x = finalDestinationX;
    y += lengthdir_y(escortSpeed, escortDirection);
} else {
    // Snap to the final destination if within speed range
    x = finalDestinationX;
    y = finalDestinationY;
}

}
