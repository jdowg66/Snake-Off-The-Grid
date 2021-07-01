/// @description Insert description here
// You can write your code in this editor
	x += xforce
	y -= yforce
while(distance_to_point(oPlayer.x,oPlayer.y) >100 ){
	var force_angle = point_direction(x,y,oPlayer.x, oPlayer.y)
	xforce+= dcos(force_angle)
	yforce+= dsin(force_angle)
	x += dcos(force_angle)
	y -= dsin(force_angle)

}
	if(abs(xforce) > res){
		xforce -= sign(xforce)*res
	}
	else{
		xforce = 0	
	}
		if(abs(yforce) > res){
		yforce -= sign(yforce)*res
	}
	else{
		yforce = 0	
	}
	