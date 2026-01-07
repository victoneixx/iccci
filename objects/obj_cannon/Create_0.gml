dir_shot = 0;
alarm[0] = delay;
switch(point){
	case "right": image_angle = 0; dir_shot = 0; break;
	case "up": image_angle = 90; dir_shot = 1; break;
	case "left": image_angle = 180; dir_shot = 2; break;
	case "down": image_angle = 270; dir_shot = 3; break;
}