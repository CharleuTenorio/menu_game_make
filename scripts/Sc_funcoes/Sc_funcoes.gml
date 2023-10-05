// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function Sc_funcoes(){

}



function sr_screen(){
	
	window_set_fullscreen(true);


}

function change_window_mode(argument0) {
	// 0=full 1=windowed

	switch (argument0) {
	
		case 0:
			window_set_fullscreen(true);
			break;
		
		case 1:
			window_set_fullscreen(false);
			break;
	}
}

function change_volume(argument0) {
	//show_debug_message("changed volume to " + string(argument0));

	var type = menu_option[page];

	switch (type) {
		case 0: // master
			audio_master_gain(argument0);
			break;
		case 1:
			audio_group_set_gain(audiogroup_sound_effects, argument0, 0);
			break;
		case 2:
			audio_group_set_gain(audiogroup_music, argument0, 0);
			break;
	}
}

