/// @description Insert description here
// You can write your code in this editor
key_up = keyboard_check_pressed(vk_up)
key_down = keyboard_check_pressed(vk_down)
if(room == Room3){
	if(!boot){
		y = 120
	sprite_index = physic_snake_logo12	
	}
	else{
		if(image_index > 1){
			check = true	
		}
		else if(check){
			sprite_index = physuc_pressc14	
		}
	}
	if(key_up){
		if(index >0){
			index--	
		}
		audio_play_sound(bomblandnew,1,false)
	}
	if(key_down){
		if(index < array_length_1d(menuItems) - 1){
			index++	
		}
		audio_play_sound(bomblandnew,1,false)
	}	
	if(mouse){
		if(abs(mouse_x - x) < 30){
		if(mouse_y <= y+140){
			if(index != 0){
			audio_play_sound(bomblandnew,1,false)	
			}
			index = 0	
		}
		else if(mouse_y <= y+200){
			if(index != 1){
			audio_play_sound(bomblandnew,1,false)	
			}
			index = 1	
		}
		else if(mouse_y <= y+280){
			if(index != 2){
			audio_play_sound(bomblandnew,1,false)	
			}
			index = 2	
		}
		else if(mouse_y <= y+400){
			if(index != 3){
			audio_play_sound(bomblandnew,1,false)	
			}
			index = 3	
		}
		else if(mouse_y <= y+480){
			if(index != 4){
			audio_play_sound(bomblandnew,1,false)	
			}
			index = 4
		}
		}
	}
	if((keyboard_check_pressed(ord("C")) && !mouse) || (mouse_check_button_pressed(mb_left) && mouse)){
		audio_play_sound(bombland,1,false)
		if(boot){
			
			boot = false	
		}
		else if(index == 0){
			with(instance_create_layer(0,360,"instances",oTrans)){
		goRoom = Room1
	}	
		}
		else if(index == 1){
			if(full){
				full = false	
			}
			else{
				full = true
			}
		}
		else if(index == 2){
			if(vol == 1){
			audio_master_gain(0)
			vol = 0
			}
			else{
				audio_master_gain(1)
				vol = 1
			}
		}
		else if(index == 3){
			if(!mouse){
				mouse = true	
				menuItems[3] = phy_mouse
			}
			else{
				mouse = false	
				menuItems[3] = phy_arrowkeys
			}
			//change controls
		}
		else if(index == 4){
			game_end()
		}
	}
	if(!audio_is_playing(addemtpd)){
		audio_stop_all()	
		audio_play_sound(addemtpd,1,true)
	}
}
else if(room == Room2){
	sprite_index = psy_restart
	if(!audio_is_playing(victory)){
		audio_stop_all()	
		audio_play_sound(victory,1,true)
	}
}
else{
	if(!audio_is_playing(was_boss_no_more)){
		audio_stop_all()	
		audio_play_sound(was_boss_no_more,1,true)
}
}
if(full){
window_set_fullscreen(true)
}
else{
	window_set_fullscreen(false)	
}
if(keyboard_check_pressed(vk_escape)){
	with(instance_create_layer(0,360,"instances",oTrans)){
		goRoom = Room3
	}
}
//game_end()