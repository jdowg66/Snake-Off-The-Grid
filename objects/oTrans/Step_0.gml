/// @description Insert description here
// You can write your code in this editor
if(counterer < 40 && up){
	counterer++	
	
}
else if(counterer > 0){
	counterer--
}
if(counterer == 40){
	room = goRoom	
	up = false
}
else if(counterer == 0){
	instance_destroy()	
}
image_xscale = (1280 / 80) * counterer