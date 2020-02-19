/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 29E87D85
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "room_win"
if(room == room_win)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 5E9D5B0B
	/// @DnDParent : 29E87D85
	/// @DnDArgument : "soundid" "Winning_sound_effect"
	/// @DnDSaveInfo : "soundid" "07b7ee28-7638-451a-aa5c-cf64835f9a33"
	audio_play_sound(Winning_sound_effect, 0, 0);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2138FF6D
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "room_gameover"
if(room == room_gameover)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 0A2F697A
	/// @DnDParent : 2138FF6D
	/// @DnDArgument : "soundid" "Sad_Trombone_Joe_Lamb_665429450"
	/// @DnDSaveInfo : "soundid" "4bb3fdff-73a3-4b3f-a4ed-f2c580c06eb2"
	audio_play_sound(Sad_Trombone_Joe_Lamb_665429450, 0, 0);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0A024B59
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "room_game"
if(room == room_game)
{
	/// @DnDAction : YoYo Games.Instance Variables.If_Score
	/// @DnDVersion : 1
	/// @DnDHash : 40455F87
	/// @DnDParent : 0A024B59
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "100"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	if(__dnd_score >= 100)
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 0409B91C
		/// @DnDParent : 40455F87
		/// @DnDArgument : "room" "room_win"
		/// @DnDSaveInfo : "room" "97605701-6601-4479-9ee2-78475e0b57bc"
		room_goto(room_win);
	}

	/// @DnDAction : YoYo Games.Instance Variables.If_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 57A6F6FD
	/// @DnDParent : 0A024B59
	/// @DnDArgument : "op" "3"
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	if(__dnd_lives <= 0)
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 15F71097
		/// @DnDParent : 57A6F6FD
		/// @DnDArgument : "room" "room_gameover "
		room_goto(room_gameover );
	}
}