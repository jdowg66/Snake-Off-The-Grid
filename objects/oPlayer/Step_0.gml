/// @description Insert description here
// You can write your code in this editor
key_left = keyboard_check(vk_left)
key_right = keyboard_check(vk_right)
key_up = keyboard_check(vk_up)
key_down = keyboard_check(vk_down)
key_swap = keyboard_check_pressed(ord("X"))
key_release = keyboard_check(ord("C"))

xdir = key_right - key_left
ydir =  key_down - key_up
if(!mouse){
	if(place_meeting(x + xdir*topSpeed + abs(max(0,(abs(xdir) - abs(ydir))))*sqrt(topSpeed)*sign(xdir),y,oWall)){
		
	}	
	else{
		x += xdir*topSpeed + abs(max(0,(abs(xdir) - abs(ydir))))*sqrt(topSpeed)*sign(xdir)
	}
	if(place_meeting(x,y + ydir*topSpeed  + abs(max(0,(abs(ydir) - abs(xdir))))*sqrt(topSpeed)*sign(xdir),oWall)){
			
	}
	else{
		y += ydir*topSpeed  + abs(max(0,(abs(ydir) - abs(xdir))))*sqrt(topSpeed)*sign(xdir)
	}
}
else{
	x = mouse_x
	y = mouse_y
}
/*
if(key_swap){
	if(mouse){
	mouse= false
	}
	else{
		mouse = true	
	}
}
*/
if(place_meeting(x,y,oBallBall) && chill <= 0){
	if(!dead){
	audio_play_sound(boom,1,false)
	deadx = x
	deady = y
	with(instance_create_layer(0,360,"instances",oTrans)){
		goRoom = Room2	
	}
	for(i = 0;i<10;i++){
	with(instance_create_layer(x,y,"instances",oParticle)){
		xSpeed = random_range(-5,5)	
		ySpeed = random_range(-5,5)	
	}
	}
	}
	
	x = deadx
	y = deady
	dead = true
}
if(chill >= 0){
	chill--	
}
if(dead){
	x = deadx
	y = deady
}