//arg0 = jump height
//arg1 = gravity direction
audio_play_sound(snd_jump,2,0);
if (argument1 == 0){
    phy_speed_y = argument0;
}
if (argument1 == 1){
    phy_speed_x = -argument0;
}
if (argument1 == 2){
    phy_speed_y = -argument0;
}
if (argument1 == 3){
    phy_speed_x = argument0;
}
