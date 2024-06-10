// Draw event of obj_transition

var segments = 12; // Number of iris segments
var maxRadius = min(room_width, room_height) * 1.5; // Maximum radius
var angleStep = 360 / segments;
var currentRadius = maxRadius * percent / tSpeed;
var twistAmount = 90 * (1 - (percent / tSpeed)); // Amount of twist, adjust as needed
var baseAngle = (currentRadius / maxRadius) * 360; // Base angle for rotation

// Get the center of the screen relative to the view
var centerX = view_xview[0] + view_wview[0] / 2;
var centerY = view_yview[0] + view_hview[0] / 2;

// Set the drawing color to black
draw_set_color(c_black);

// Draw the camera shutter effect
for (var i = 0; i < segments; i++) {
    // Calculate the coordinates for the shutter segments relative to the center of the screen
    // Use centerX and centerY instead of x and y
    var angle1 = baseAngle + i * angleStep + twistAmount * (i / segments);
    var angle2 = baseAngle + (i + 1) * angleStep + twistAmount * ((i + 1) / segments);

    var x1 = centerX + lengthdir_x(currentRadius, angle1);
    var y1 = centerY + lengthdir_y(currentRadius, angle1);
    var x2 = centerX + lengthdir_x(currentRadius, angle2);
    var y2 = centerY + lengthdir_y(currentRadius, angle2);

    var x3 = centerX + lengthdir_x(0, angle1);
    var y3 = centerY + lengthdir_y(0, angle1);
    var x4 = centerX + lengthdir_x(0, angle2);
    var y4 = centerY + lengthdir_y(0, angle2);

    // Draw the segment
    draw_primitive_begin(pr_trianglestrip);
    draw_vertex(x3, y3);
    draw_vertex(x1, y1);
    draw_vertex(x4, y4);
    draw_vertex(x2, y2);
    draw_primitive_end();
}
