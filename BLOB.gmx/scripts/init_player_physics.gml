//This script creates the 'gooiness' of the player
//Arg 0: Size
//Creates phyics fixture for the center body
fix = physics_fixture_create();

physics_fixture_set_circle_shape(fix, argument0*4);
physics_fixture_set_angular_damping(fix, 0.1);
physics_fixture_set_density(fix, 0.5);
physics_fixture_set_friction(fix, 0.5);
physics_fixture_set_restitution(fix, .5)
physics_fixture_set_linear_damping(fix,0.1);


physics_fixture_bind(fix, self);
physics_fixture_delete(fix);

//Creates the 8 circles outside out of the center
fix = physics_fixture_create();

physics_fixture_set_circle_shape(fix, argument0*4);
physics_fixture_set_angular_damping(fix, 0.1);
physics_fixture_set_density(fix, 0.01);
physics_fixture_set_friction(fix, .5);
physics_fixture_set_restitution(fix, .5)
physics_fixture_set_linear_damping(fix,0.1);

edges[0] = instance_create(x,y-10,obj_playeredge);
edges[1] = instance_create(x+5,y-5,obj_playeredge);
edges[2] = instance_create(x+10,y,obj_playeredge);
edges[3] = instance_create(x+5,y+5,obj_playeredge);
edges[4] = instance_create(x,y+10,obj_playeredge);
edges[5] = instance_create(x-5,y+5,obj_playeredge);
edges[6] = instance_create(x-10,y,obj_playeredge);
edges[7] = instance_create(x-5,y-5,obj_playeredge);

//Creates distance joints between the center and the circle edges
for (i = 0; i < 8; i++)
{
    physics_fixture_bind(fix, edges[i]);
    innerjoints[i] = physics_joint_distance_create(self, edges[i], x, y, edges[i].x,edges[i].y, false);
}

//Creates distance joints between each of the circle edges
for (i = 0; i < 8; i++)
{
    if i < 7 var j = physics_joint_distance_create(edges[i], edges[i+1], edges[i].x, edges[i].y, edges[i+1].y,edges[i+1].y, false)
    else var j = physics_joint_distance_create(edges[i], edges[0], edges[i].x, edges[i].y, edges[0].y,edges[0].y, false);
    edgejoints[i] = j;
    physics_joint_set_value(j, phy_joint_damping_ratio, 0);
    physics_joint_set_value(j, phy_joint_frequency, 50);
}

physics_fixture_delete(fix);
