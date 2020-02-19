/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2CD2DDA2
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "room_game"
if(room == room_game)
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 62234C48
	/// @DnDParent : 2CD2DDA2
	/// @DnDArgument : "steps" "60"
	alarm_set(0, 60);

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 24ADEB51
	/// @DnDParent : 2CD2DDA2
	/// @DnDArgument : "times" "3"
	repeat(3)
	{
		/// @DnDAction : YoYo Games.Random.Choose
		/// @DnDVersion : 1
		/// @DnDHash : 234B306A
		/// @DnDInput : 2
		/// @DnDParent : 24ADEB51
		/// @DnDArgument : "var" "variable"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "option_1" "1"
		var variable = choose(0, 1);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1497E68D
		/// @DnDParent : 24ADEB51
		if(variable == 0)
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 297F6597
			/// @DnDParent : 1497E68D
			/// @DnDArgument : "var" "xx"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "max" "room_width*.3"
			var xx = floor(random_range(0, room_width*.3 + 1));
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 5210A12B
		/// @DnDParent : 24ADEB51
		else
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 118AC7E5
			/// @DnDParent : 5210A12B
			/// @DnDArgument : "var" "xx"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "min" "room_width*.7"
			/// @DnDArgument : "max" "room_width"
			var xx = floor(random_range(room_width*.7, room_width + 1));
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0D7DC2F9
		/// @DnDParent : 24ADEB51
		if(variable == 0)
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 5E4A9ADC
			/// @DnDParent : 0D7DC2F9
			/// @DnDArgument : "var" "yy"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "max" "room_height*.3"
			var yy = floor(random_range(0, room_height*.3 + 1));
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 5A5E2585
		/// @DnDParent : 24ADEB51
		else
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 47031591
			/// @DnDParent : 5A5E2585
			/// @DnDArgument : "var" "yy"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "min" "room_height*.7"
			/// @DnDArgument : "max" "room_height"
			var yy = floor(random_range(room_height*.7, room_height + 1));
		}
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 397CAAAC
		/// @DnDParent : 24ADEB51
		/// @DnDArgument : "xpos" "xx"
		/// @DnDArgument : "ypos" "yy"
		/// @DnDArgument : "objectid" "object_astroid"
		/// @DnDSaveInfo : "objectid" "87afceaf-bf83-4fdc-a284-82e5f6af70f0"
		instance_create_layer(xx, yy, "Instances", object_astroid);
	}
}