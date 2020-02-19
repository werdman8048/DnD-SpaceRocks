/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 1E8FFA64
/// @DnDArgument : "expr" "room"
var l1E8FFA64_0 = room;
switch(l1E8FFA64_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 1017F56B
	/// @DnDParent : 1E8FFA64
	/// @DnDArgument : "const" "room_start"
	case room_start:
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 6C9CA87A
		/// @DnDParent : 1017F56B
		/// @DnDArgument : "room" "room_game"
		/// @DnDSaveInfo : "room" "f90ba5c1-b71b-499e-bc67-187918803da9"
		room_goto(room_game);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 465D1E9C
	/// @DnDParent : 1E8FFA64
	/// @DnDArgument : "const" "room_gameover"
	case room_gameover:
		/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 46F7F689
		/// @DnDParent : 465D1E9C
		game_restart();
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 476105B1
	/// @DnDParent : 1E8FFA64
	/// @DnDArgument : "const" "room_win"
	case room_win:
		/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 0F1B4F19
		/// @DnDParent : 476105B1
		game_restart();
		break;
}