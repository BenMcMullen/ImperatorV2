// Constants for text box dimensions
shipSprite = layer_sprite_get_id("IntroAssets", "spr_finchStatic");
endtext[0] = "Hello there! I'm Nebula, your on-board flight computer. ";
endtext[1] = "Please allow me to share the details of your spacecraft.";
endtext[2] = "For now, don't worry about running out of fuel or cooking your engines.";
endtext[3] = "Imperator Blackthorne has given you Venuzian 4th generation Acus Finch!";
endtext[4] = "If you need to squeeze a little extra speed out of this archaic beauty,";
endtext[5] = "you can hold down on your booster throttle. [SPACEBAR] ";
endtext[6] = "Your primary weapon is concentrated plasma.";
endtext[7] = "To shoot it, hold down your fire trigger [LEFT MOUSE BUTTON]";
endtext[8] = "If you are running a missile upgrade, lauch them with your secondary trigger [RIGHT MOUSE BUTTON]";
endtext[9] = "In the upper left corner of your HUD you can see your remaining shield and hull integrity.";
endtext[10] = "I'll keep track of your sqaud rating, and your kill count in the upper right of your HUD.";
 endtext[11] = "When you are ready for your first mission,";
 endtext[12] = "join the rest of your sqaudmates in the hangar Blackthorne's flagship, the Erasmus.";
  endtext[13] = "Oh, and maybe take some time to look around. ";
  endtext[14] = "My scanners picked up a spare missile package we can use!";



text = "";
length = string_length(endtext[currentLine]);

// Wrap text function
