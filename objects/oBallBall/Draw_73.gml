/// @description Insert description here
// You can write your code in this editor
if(link && !instance_exists(oTrans)){
	draw_sprite_ext(sprite_index,image_index,x,y,1,1,point_direction(x,y,follow.x,follow.y),c_white,1)
}
else if(!instance_exists(oTrans)){
	draw_self()	
}