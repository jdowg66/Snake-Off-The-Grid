/// @description Insert description here
// You can write your code in this editor
if(create){
	audio_play_sound(better_bite,1,false)
	audio_sound_pitch(better_bite,random_range(0.7,1.3))
	var newTail = instance_create_layer(tail.x,tail.y,"instances",oBallBall)	
	with(newTail){
		object = oGameRunner.tail	
		dist = 100
		res = oGameRunner.res
		image_index = oGameRunner.counter
	}
	
	var oldTail = tail
	tail = newTail
	with(oldTail){
		follow = oGameRunner.tail
		link = true
	}
	res+=0.2
	create = false
	oPlayer.topSpeed+=.2
	if(countUp){
		if(counter == 4){
			countUp = false
			counter--
		}
		else{
		counter++	
		}
	}
	else{
		if(counter == 0){
			countUp = true
			counter++
		}
		else{
		counter--
		}	
	}
	oMenu.length++
}
if(!instance_exists(oFruit)){
	instance_create_layer(irandom_range(100,1180), irandom_range(100,620), "instances",oFruit)	
}