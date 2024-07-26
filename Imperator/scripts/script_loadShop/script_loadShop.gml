// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// scr_load_next_level

function LoadShop() {
        	SlideTransition(TRANS_MODE.GOTO, room_shop);
			audio_play_sound(snd_door, 1, false);
  
}
