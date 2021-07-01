/// @description Insert description here
// You can write your code in this editor
if(room != Room1 ){
	draw_self()	
	if(room == Room3 && !boot){
		for(i = 0; i < array_length_1d(menuItems);i++){
			if(index == i){
			draw_sprite(menuItems[i], 0,x, y + 120 + 80*i)
			}
			else{
				draw_sprite(menuItems[i], 1,x, y + 120 + 80*i)
			}
		}
	}
	else if(room == Room2){
		draw_sprite_ext(phy_numbers_large,floor(length/100),x-240,y+260,1,1,0,c_white,1)	
		draw_sprite_ext(phy_numbers_large,floor((length% 100)/10),x,y+260,1,1,0,c_white,1)
		draw_sprite_ext(phy_numbers_large,floor(length% 10),x+240,y+260,1,1,0,c_white,1)
	}
}
