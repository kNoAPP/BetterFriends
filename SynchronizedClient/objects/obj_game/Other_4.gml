/// @description Insert description here
// You can write your code in this editor

if(room == rm_title_screen) {
	audio_play_sound(snd_title, 100, true);
	
	room_code = "";
	level = 0;
	max_players = 0;
	positive_score = 0;
	negative_score = 0;
	step = 0;
	
	host = false;
	
	role = -1;
	
	ds_map_clear(player_name_to_obj);
	with(obj_player) {
		instance_destroy();
	}
	ds_list_clear(player_objs);
} else {
	audio_stop_sound(snd_title);
}
	
if(room == rm_host_pregame_lobby) {
	audio_play_sound(snd_slby_lobby, 100, true);
	
	with(obj_player) {
		visible = true;
	}
} else {
	audio_stop_sound(snd_slby_lobby);
}

if(room == rm_host_instructions) {
	audio_play_sound(snd_slby_instructions, 100, true);
	
	with(obj_player) {
		visible = false;
	}
} else if(room != rm_host_level_select) {
	audio_stop_sound(snd_slby_instructions);
}

if(room == rm_host_level_select || room == rm_host_win || room == rm_host_lose) {
	with(obj_player) {
		visible = false;
	}
}

if(room == rm_host_game) {
	audio_play_sound(snd_slby_game, 100, true);
	
	with(obj_player) {
		visible = true;
	}
} else {
	audio_stop_sound(snd_slby_game);
}