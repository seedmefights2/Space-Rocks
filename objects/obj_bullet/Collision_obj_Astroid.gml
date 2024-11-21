score += 10;

instance_destroy();

audio_play_sound(snd_die, 1, false);

with (other)
{
instance_destroy();
audio_play_sound(snd_die, 1, false);
if (sprite_index == spr_rock_big)
	{
	repeat(2)
		{
		var new_astroid = instance_create_layer(x, y, "Instances", obj_Astroid);
		new_astroid.sprite_index = spr_rock_medium;
		}
	}
else if (sprite_index == spr_rock_medium)
	{
	repeat(2)
		{
			var new_astroid = instance_create_layer(x, y, "Instances", obj_Astroid);
			new_astroid.sprite_index = spr_rock_small;
		}
	}
repeat(10)
	{
	instance_create_layer(x, y, "Instances", obj_debris);
	}
}





