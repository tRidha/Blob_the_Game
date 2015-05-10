//Setting surface for water/blob
if surface_exists(surWater)&& surface_exists(surHighlights){
    surface_set_target(surWater);
    draw_clear_alpha(c_white,0);
    draw_set_blend_mode(bm_add);
    with(obj_playeredge)draw_sprite_ext(spr_gradient,0,x,y,1*global.playersize,1*global.playersize,0,c_white,1);
    with(obj_parent_goo)draw_sprite_ext(spr_gradient,0,x,y,1,1,0,c_white,1);
    draw_set_blend_mode_ext(6,9);
    repeat(6)draw_rectangle(0,0,1024,1024,0);
    surface_reset_target();
    //Setting Surface for Highlight
    surface_set_target(surHighlights);
    draw_clear_alpha(c_white,0);
    draw_set_blend_mode(bm_normal);
    draw_surface(surWater,0,0);
    draw_set_blend_mode_ext(1,6);
    //Drawing the Highlight
    if global.grav == 2 draw_surface(surWater,1,2);
    else if global.grav == 0 draw_surface(surWater,-1,-2);
    else if global.grav == 1 draw_surface(surWater,2,1);
    else if global.grav == 3 draw_surface(surWater,-2,1);
    
    surface_reset_target();
    
    draw_set_blend_mode(bm_normal);
    draw_surface_ext(surWater,0,0,1,1,0,colors[color],0.6);
    draw_set_blend_mode(bm_add);
    draw_surface_ext(surHighlights,0,0,1,1,0,c_white,0.8);
    draw_set_blend_mode(bm_normal);
}
else{
    surWater = surface_create(512,512);
    surHighlights = surface_create(512,512);
}
