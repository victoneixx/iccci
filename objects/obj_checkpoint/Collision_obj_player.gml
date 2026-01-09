if(active){exit}
with(obj_checkpoint){
	active = false;
}

active = true;

global.ckp_x = x;
global.ckp_y = y;

audio_play_sound(snd_checkpoint, 0, 0);