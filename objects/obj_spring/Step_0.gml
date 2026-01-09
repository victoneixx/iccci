if(active && alarm[0] <= 0){
	alarm[0] = 120;
}
if(active){exit}
if(instance_place(x, y-1, obj_player)){
	active = true;
	audio_play_sound(snd_spring, 0, 0);
	with(obj_player){
		vspd -= 7.2;
	}
}