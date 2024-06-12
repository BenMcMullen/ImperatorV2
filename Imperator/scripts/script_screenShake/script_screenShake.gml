
function ScreenShake(){
with (obj_camera) 
{
	if (argument0 > shakeRemain)	
	{
		shakeMagnitude = argument0;
		shakeRemain = argument0;
		shakeLength = argument1;
	}
	
}
}