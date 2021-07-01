/// @description Insert description here
// You can write your code in this editor
	if(place_meeting(x + xforce,y,oWall)){
		xforce = 0
	}
	else{
		x += xforce
	}
	if(place_meeting(x,y-yforce,oWall)){
		yforce = 0
	}
	else{
		y -= yforce
	}
while(distance_to_point(object.x,object.y) >dist ){
	force= 5
	force_angle = point_direction(x,y,object.x, object.y)
	xforce+= dcos(point_direction(x,y,object.x, object.y))
	yforce+= dsin(point_direction(x,y,object.x, object.y))
	x += dcos(point_direction(x,y,object.x, object.y))
	y -= dsin(point_direction(x,y,object.x, object.y))

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