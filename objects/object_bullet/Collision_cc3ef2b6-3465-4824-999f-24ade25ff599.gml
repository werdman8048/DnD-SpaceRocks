/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 355F2021
/// @DnDArgument : "soundid" "Balloon_popping"
audio_play_sound(Balloon_popping, 0, 0);

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 1A7EFCD4
/// @DnDApplyTo : a6bdf25d-ee30-47b7-afb6-a49ebbed95d5
with(object_game) {
	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 68FCF304
	/// @DnDParent : 1A7EFCD4
	/// @DnDArgument : "score" "10"
	/// @DnDArgument : "score_relative" "1"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(10);
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 2E3C6E15
instance_destroy();

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 2DE7B853
/// @DnDApplyTo : other
with(other) {
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2D5E9F89
	/// @DnDParent : 2DE7B853
	instance_destroy();

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 436D36CC
	/// @DnDParent : 2DE7B853
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "sprite_astroid_large"
	if(sprite_index == sprite_astroid_large)
	{
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 03686B25
		/// @DnDParent : 436D36CC
		/// @DnDArgument : "times" "2"
		repeat(2)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 6065A3A5
			/// @DnDParent : 03686B25
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "newAstroid"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "object_astroid"
			/// @DnDSaveInfo : "objectid" "87afceaf-bf83-4fdc-a284-82e5f6af70f0"
			var newAstroid = instance_create_layer(x + 0, y + 0, "Instances", object_astroid);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 30B6BC0C
			/// @DnDParent : 03686B25
			/// @DnDArgument : "expr" "sprite_astroid_med"
			/// @DnDArgument : "var" "newAstroid.sprite_index"
			newAstroid.sprite_index = sprite_astroid_med;
		}
	}

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 0E378E79
	/// @DnDParent : 2DE7B853
	/// @DnDArgument : "times" "10"
	repeat(10)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 45A240C4
		/// @DnDParent : 0E378E79
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "object_debris"
		/// @DnDSaveInfo : "objectid" "8aa9e556-cef4-495a-9686-7ba6e7476932"
		instance_create_layer(x + 0, y + 0, "Instances", object_debris);
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3D6F5EA7
	/// @DnDParent : 2DE7B853
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "sprite_astroid_med"
	if(sprite_index == sprite_astroid_med)
	{
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 5B80C171
		/// @DnDParent : 3D6F5EA7
		/// @DnDArgument : "times" "2"
		repeat(2)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 6E06191D
			/// @DnDParent : 5B80C171
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "newAstroid"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "object_astroid"
			/// @DnDSaveInfo : "objectid" "87afceaf-bf83-4fdc-a284-82e5f6af70f0"
			var newAstroid = instance_create_layer(x + 0, y + 0, "Instances", object_astroid);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 28E21011
			/// @DnDParent : 5B80C171
			/// @DnDArgument : "expr" "sprite_astroid_small"
			/// @DnDArgument : "var" "newAstroid.sprite_index"
			newAstroid.sprite_index = sprite_astroid_small;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2DB1CC5B
	/// @DnDParent : 2DE7B853
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "sprite_astroid_small"
	if(sprite_index == sprite_astroid_small)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 1918A283
		/// @DnDParent : 2DB1CC5B
		instance_destroy();
	}

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 2B05A0FF
	/// @DnDParent : 2DE7B853
	/// @DnDArgument : "times" "10"
	repeat(10)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 2EA5F163
		/// @DnDParent : 2B05A0FF
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "object_debris"
		/// @DnDSaveInfo : "objectid" "8aa9e556-cef4-495a-9686-7ba6e7476932"
		instance_create_layer(x + 0, y + 0, "Instances", object_debris);
	}
}