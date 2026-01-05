if(global.death){exit}
var _right = keyboard_check(ord("D"));
var _left = keyboard_check(ord("A"));
var _jump = keyboard_check(vk_space);

hspd = (_right - _left)*spd;
vspd += grav;

if(place_meeting(x+hspd, y, obj_wall)){
	while(!place_meeting(x+sign(hspd), y, obj_wall)){
		x+=sign(hspd);
	}
	hspd = 0;
}
x+=hspd;

if(place_meeting(x, y+vspd, obj_wall)){
	while(!place_meeting(x, y+sign(vspd), obj_wall)){
		y+=sign(vspd);
	}
	vspd = 0;
}
y+=vspd;

if(place_meeting(x, y+1, obj_wall) && _jump){
	vspd -= 8;
}