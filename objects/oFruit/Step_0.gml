/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,oPlayer)){
	oGameRunner.create = true
	for(i = 0;i<5;i++){
	instance_create_layer(x,y,"instances",oParticle)	
	}
	instance_destroy()	
}