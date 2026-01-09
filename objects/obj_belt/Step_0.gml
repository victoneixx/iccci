if(instance_place(x, y-1, obj_player)){
	if(side == "right"){
		obj_player.x += speed_belt;
	} else if(side == "left"){
		obj_player.x -= speed_belt;
	}
}