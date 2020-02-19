/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 03FD81A6
/// @DnDArgument : "soundid" "Glass_breaking_sound"
audio_play_sound(Glass_breaking_sound, 0, 0);

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 33B0DE54
/// @DnDApplyTo : a6bdf25d-ee30-47b7-afb6-a49ebbed95d5
with(object_game) {
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 07665875
	/// @DnDParent : 33B0DE54
	/// @DnDArgument : "steps" "60"
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, 60);
}

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 68E72090
/// @DnDApplyTo : a6bdf25d-ee30-47b7-afb6-a49ebbed95d5
with(object_game) {
	/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 439224A9
	/// @DnDParent : 68E72090
	/// @DnDArgument : "lives" "-1"
	/// @DnDArgument : "lives_relative" "1"
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	__dnd_lives += real(-1);
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 2D67E34F
instance_destroy();

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 3BC3261E
/// @DnDArgument : "times" "10"
repeat(10)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 297573CB
	/// @DnDParent : 3BC3261E
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "object_debris"
	/// @DnDSaveInfo : "objectid" "8aa9e556-cef4-495a-9686-7ba6e7476932"
	instance_create_layer(x + 0, y + 0, "Instances", object_debris);
}