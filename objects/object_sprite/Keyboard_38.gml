/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 61CB0A88
/// @DnDInput : 2
/// @DnDArgument : "function" "motion_add"
/// @DnDArgument : "arg" "image_angle"
/// @DnDArgument : "arg_1" "0.05"
motion_add(image_angle, 0.05);

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 51596D60
/// @DnDArgument : "key" "vk_up"
var l51596D60_0;
l51596D60_0 = keyboard_check(vk_up);
if (l51596D60_0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 17EF3F4A
	/// @DnDParent : 51596D60
	/// @DnDArgument : "imageind" "2"
	/// @DnDArgument : "spriteind" "sprite_ship"
	/// @DnDSaveInfo : "spriteind" "98c5c6a0-0ed9-4cda-80b4-fcdf2b716112"
	sprite_index = sprite_ship;
	image_index = 2;
}

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 6FC13A80
/// @DnDArgument : "imageind" "1"
/// @DnDArgument : "spriteind" "sprite_ship"
/// @DnDSaveInfo : "spriteind" "98c5c6a0-0ed9-4cda-80b4-fcdf2b716112"
sprite_index = sprite_ship;
image_index = 1;