if(global.death && alarm[0] <= 0){
	alarm[0] = 60;
	audio_play_sound(snd_dead, 0, 0);
}

if(global.death){exit}

var _right = keyboard_check(ord("D"));
var _left = keyboard_check(ord("A"));
var _jump = keyboard_check_pressed(vk_space);

hspd = (_right - _left)*spd;

#region Sistema da belt
var _belt_spd = 2.2;
if (place_meeting(x, y + sign(grav), obj_belt_right)) {
	hspd += _belt_spd;
} else if(place_meeting(x, y + sign(grav), obj_belt_left)){
	hspd -= _belt_spd;
}
#endregion

vspd += grav;
grav = clamp(grav, 0, 2);
if(hspd != 0){image_xscale = sign(hspd)}

if(_right || _left){
	sprite_index = spr_player_walk;
} else {
	sprite_index = spr_player_idle;
}

if(place_meeting(x+hspd, y, obj_collider)){
	while(!place_meeting(x+sign(hspd), y, obj_collider)){
		x+=sign(hspd);
	}
	hspd = 0;
}
x+=hspd;

if(place_meeting(x, y+vspd, obj_collider)){
	while(!place_meeting(x, y+sign(vspd), obj_collider)){
		y+=sign(vspd);
	}
	vspd = 0;
}
y+=vspd;

if(place_meeting(x, y+1, obj_collider) && _jump){
	vspd -= 5.5;
	audio_play_sound(snd_jump, 0, 0);
}