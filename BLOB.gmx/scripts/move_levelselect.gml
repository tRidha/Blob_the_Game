//arg0 = level
if(x != (argument0+1)*256 - con_levelselect.select*256){
    if con_levelselect.select >= argument0 hspeed = -8;
    else if con_levelselect.select < argument0 hspeed = 8;
}
else hspeed = 0;
