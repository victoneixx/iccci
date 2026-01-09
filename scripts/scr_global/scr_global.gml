global.death = false;
global.death_counter = 0;
global.item_counter = 0;
global.ckp_x = 0;
global.ckp_y = 0;

function death_player(){
	if(global.death == false){
		global.death = true;
		global.death_counter++;
		sprite_index = spr_player_dead;
		global.hspd_g = 0;
	}
}