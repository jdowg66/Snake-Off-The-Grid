/// @description Insert description here
// You can write your code in this editor
key_release = (keyboard_check_pressed(ord("C")) || (mouse_check_button_pressed(mb_left)))
if(key_release){
	audio_play_sound(bombland,1,false)
	
	with(instance_create_layer(0,360,"instances",oTrans)){
		goRoom = Room1
	}
		
}