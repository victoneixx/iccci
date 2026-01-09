if(active){exit}
active = true;
audio_play_sound(snd_spring, 0, 0);
with(obj_player){
	vspd -= 6.8;
}