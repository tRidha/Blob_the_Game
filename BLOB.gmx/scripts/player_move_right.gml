//Arg 1: Desired Player Speed
//Arg 2: Rotation
right = true;
if (argument1 == 0){
    physics_apply_force(x,y,argument0*-1,0);

}
else if (argument1 == 1){
    physics_apply_force(x,y,0,-argument0);
}
else if (argument1 == 2){
    physics_apply_force(x,y,argument0,0);

}
else{
    physics_apply_force(x,y,0,argument0);
}