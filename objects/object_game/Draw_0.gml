/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 3470455C
/// @DnDArgument : "expr" "room"
var l3470455C_0 = room;
switch(l3470455C_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 3CC03061
	/// @DnDParent : 3470455C
	/// @DnDArgument : "const" "room_game"
	case room_game:
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 2875E0EC
		/// @DnDParent : 3CC03061
		/// @DnDArgument : "x" "20"
		/// @DnDArgument : "y" "20"
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(20, 20, string("Score: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Lives
		/// @DnDVersion : 1
		/// @DnDHash : 5E665CE8
		/// @DnDParent : 3CC03061
		/// @DnDArgument : "x" "40"
		/// @DnDArgument : "y" "60"
		/// @DnDArgument : "sprite" "sprite_score"
		/// @DnDSaveInfo : "sprite" "f96c102a-6c95-4beb-999c-74d3514e0ea3"
		var l5E665CE8_0 = sprite_get_width(sprite_score);
		var l5E665CE8_1 = 0;
		if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
		for(var l5E665CE8_2 = __dnd_lives; l5E665CE8_2 > 0; --l5E665CE8_2) {
			draw_sprite(sprite_score, 0, 40 + l5E665CE8_1, 60);
			l5E665CE8_1 += l5E665CE8_0;
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 03A6C000
	/// @DnDParent : 3470455C
	/// @DnDArgument : "const" "room_start"
	case room_start:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 1B70BE5B
		/// @DnDParent : 03A6C000
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 78427B7C
		/// @DnDParent : 03A6C000
		/// @DnDArgument : "color" "$FF26ECFF"
		draw_set_colour($FF26ECFF & $ffffff);
		var l78427B7C_0=($FF26ECFF >> 24);
		draw_set_alpha(l78427B7C_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 4D4F5ABF
		/// @DnDParent : 03A6C000
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "70"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""ASTEROIDS""
		draw_text_transformed(250, 70, string("ASTEROIDS") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 233EAE85
		/// @DnDParent : 03A6C000
		draw_set_colour($FFFFFFFF & $ffffff);
		var l233EAE85_0=($FFFFFFFF >> 24);
		draw_set_alpha(l233EAE85_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 10646222
		/// @DnDParent : 03A6C000
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "200"
		/// @DnDArgument : "caption" ""Score 1,000 points to win! ""
		draw_text(250, 200, string("Score 1,000 points to win! ") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 3B07C880
		/// @DnDParent : 03A6C000
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "230"
		/// @DnDArgument : "caption" ""UP: move""
		draw_text(250, 230, string("UP: move") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 09D4468A
		/// @DnDParent : 03A6C000
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "260"
		/// @DnDArgument : "caption" ""LEFT/RIGHT: rotate""
		draw_text(250, 260, string("LEFT/RIGHT: rotate") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 22CF4D32
		/// @DnDParent : 03A6C000
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "290"
		/// @DnDArgument : "caption" ""SPACE: shoot""
		draw_text(250, 290, string("SPACE: shoot") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 33202CEB
		/// @DnDParent : 03A6C000
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "320"
		/// @DnDArgument : "caption" ""Press ENTER to start""
		draw_text(250, 320, string("Press ENTER to start") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 55F4B2FE
		/// @DnDParent : 03A6C000
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "475"
		/// @DnDArgument : "caption" ""by willis""
		draw_text(250, 475, string("by willis") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 6F6B8BF8
		/// @DnDParent : 03A6C000
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 2BEC7967
	/// @DnDParent : 3470455C
	/// @DnDArgument : "const" "room_gameover"
	case room_gameover:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 58F3BF05
		/// @DnDParent : 2BEC7967
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 223390B9
		/// @DnDParent : 2BEC7967
		/// @DnDArgument : "color" "$FF162AFF"
		draw_set_colour($FF162AFF & $ffffff);
		var l223390B9_0=($FF162AFF >> 24);
		draw_set_alpha(l223390B9_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 41DB2ACE
		/// @DnDParent : 2BEC7967
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "70"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""YOU LOSE""
		draw_text_transformed(250, 70, string("YOU LOSE") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 158F22F6
		/// @DnDParent : 2BEC7967
		draw_set_colour($FFFFFFFF & $ffffff);
		var l158F22F6_0=($FFFFFFFF >> 24);
		draw_set_alpha(l158F22F6_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 05E3121D
		/// @DnDParent : 2BEC7967
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "250"
		/// @DnDArgument : "caption" ""FINAL SCORE: ""
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(250, 250, string("FINAL SCORE: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 4D2FA214
		/// @DnDParent : 2BEC7967
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "320"
		/// @DnDArgument : "caption" ""Press ENTER to RESTART""
		draw_text(250, 320, string("Press ENTER to RESTART") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 5882BE6E
		/// @DnDParent : 2BEC7967
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 175C4897
	/// @DnDParent : 3470455C
	/// @DnDArgument : "const" "room_win"
	case room_win:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 48285141
		/// @DnDParent : 175C4897
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 624B6AE5
		/// @DnDParent : 175C4897
		/// @DnDArgument : "color" "$FF16FF32"
		draw_set_colour($FF16FF32 & $ffffff);
		var l624B6AE5_0=($FF16FF32 >> 24);
		draw_set_alpha(l624B6AE5_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 7F58137B
		/// @DnDParent : 175C4897
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "70"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""YOU WIN!""
		draw_text_transformed(250, 70, string("YOU WIN!") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 5CD29A94
		/// @DnDParent : 175C4897
		draw_set_colour($FFFFFFFF & $ffffff);
		var l5CD29A94_0=($FFFFFFFF >> 24);
		draw_set_alpha(l5CD29A94_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 766BD0E2
		/// @DnDParent : 175C4897
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "250"
		/// @DnDArgument : "caption" ""FINAL SCORE: ""
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(250, 250, string("FINAL SCORE: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 290340B6
		/// @DnDParent : 175C4897
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "320"
		/// @DnDArgument : "caption" ""Press ENTER to RESTART""
		draw_text(250, 320, string("Press ENTER to RESTART") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 1F771459
		/// @DnDParent : 175C4897
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;
}