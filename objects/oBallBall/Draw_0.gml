/// @description Insert description here
// You can write your code in this editor
if(link){
draw_sprite_ext(Sprite3,-1,x,y, distance_to_point(follow.x,follow.y) +5 ,1,point_direction(x,y,follow.x, follow.y),c_white, 1)
draw_sprite_ext(sprite_index,image_index,x,y,1,1,point_direction(x,y,follow.x,follow.y),c_white,1)
}
else{
draw_self()		
}
