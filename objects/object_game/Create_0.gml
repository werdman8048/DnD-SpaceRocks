/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 53F25050
/// @DnDArgument : "soundid" "bensound_goinghigher"
/// @DnDArgument : "loop" "1"
/// @DnDSaveInfo : "soundid" "e01fb85c-12b4-405e-868d-371bdbf9b4d6"
audio_play_sound(bensound_goinghigher, 0, 1);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 48BB9C43
/// @DnDArgument : "font" "font_text"
/// @DnDSaveInfo : "font" "bc8d378c-1966-4e38-891e-604ab9b96d7c"
draw_set_font(font_text);

/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 3D8E8F57

__dnd_score = real(0);

/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
/// @DnDVersion : 1
/// @DnDHash : 6D5F9EE1
/// @DnDArgument : "lives" "3"

__dnd_lives = real(3);