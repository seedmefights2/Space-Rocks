if keyboard_check(ord("A"))
{
		image_angle = image_angle + 5;
}

if keyboard_check(ord("D"))
{
		image_angle = image_angle - 5;
}

if keyboard_check(ord("W"))
{
	motion_add(image_angle, 0.05);
}

move_wrap(true, true, sprite_width / 2);

if (mouse_check_button_pressed(mb_left))
{
audio_play_sound(snd_zap, 1, false);
var inst = instance_create_layer(x, y, "Instances", obj_bullet);
inst.direction = image_angle;
}

if global.pHealth < 0 {
	global.pHealth = 0;
}

if global.pHealth > 3 {
	global.pHealth = 3;
}
