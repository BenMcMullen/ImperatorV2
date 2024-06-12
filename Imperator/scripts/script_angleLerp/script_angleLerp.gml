// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AngleLerp(){
/// scr_angle_lerp(angle1, angle2, amount)
var angle1 = argument0;
var angle2 = argument1;
var amount = argument2;

var shortest_angle = ((angle2 - angle1 + 540) % 360) - 180;
return angle1 + shortest_angle * amount;

}