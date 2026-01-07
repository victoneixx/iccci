if(global.death && alarm[0] <= 0){
	alarm[0] = 60;
	audio_play_sound(snd_dead, 0, 0);
}
