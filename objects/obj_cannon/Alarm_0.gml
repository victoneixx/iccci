var _plasma = instance_create_layer(x, y, layer, obj_plasma);
_plasma.direction = 90*dir_shot;
_plasma.speed = 2;
_plasma.x += lengthdir_x(12, image_angle);
_plasma.y += lengthdir_y(12, image_angle);
alarm[0] = delay;