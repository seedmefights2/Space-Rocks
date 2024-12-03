
global.pHealth -= 1;

if global.pHealth = 0 {
	instance_destroy();
	lives -= 1;
	
	repeat(10)
	{
	audio_play_sound(snd_die, 1, false);
	instance_create_layer(x, y, "Instances", obj_debris);
	}
	
	
	with (obj_game)
	{
	alarm[1] = room_speed;
	}
}