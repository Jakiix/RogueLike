var dist_to_wall = argument0
var xposition = argument1
var yposition = argument2
var test = argument4
var rest = dist_to_wall mod 64
nbsprite = (dist_to_wall - rest) / 64


i = 1

switch (argument3)
{
    case "top":
    {    
        while (i <= nbsprite)
        {
            if (yposition == argument2)
                draw_sprite(test_laser, frame, xposition, yposition);
            else
                draw_sprite(spr_laser, frame, xposition, yposition);
            yposition -= 64
            i++
        }
        draw_sprite_part(spr_laser, frame, 0, 0 + (64 - rest), 31, rest, xposition - 15, (169 - verticalY));
        draw_sprite_ext(spr_laser_end, frame, xposition, (169 - verticalY), 1, 1, 0, c_white, 1); 
        with(obj_parent_monster)
        {
            if (collision_line(xposition, argument2, xposition, (169 - test), id, false, false))
                id.hp -= Player_obj.attack
        }
        break;
    }
    case "bot":
    {
        while (i <= nbsprite)
        {
            draw_sprite_ext(spr_laser, frame, xposition, yposition, 1, 1, 180, c_white, 1);
            yposition += 64
            i++
        }
        draw_sprite_general(spr_laser, frame, 0, 0 + (64 - rest), 31, rest, xposition + 15, (1080 - verticalY - 169), 1, 1, 180, c_white, c_white, c_white, c_white, 1);
        draw_sprite_ext(spr_laser_end, frame, xposition, (1080 - verticalY - 169),1, 1, 180, c_white, 1);
        with(obj_parent_monster)
        {
            if (collision_line(xposition, argument2, xposition, (1080 - argument2 - 169), id, false, false))
                id.hp -= Player_obj.attack
        }
        break;
    }
    case "left":
    {
        while (i <= nbsprite)
            {
                draw_sprite_ext(spr_laser, frame, xposition - 64, yposition, 1, 1, 270, c_white, 1);
                xposition -= 64
                i++
            }
        draw_sprite_general(spr_laser, frame, 0, 0 + (64 - rest), 31, rest, xposition, yposition - 15, 1, 1, 270, c_white, c_white, c_white, c_white, 1);
        draw_sprite_ext(spr_laser_end, frame, xposition - rest, yposition, 1, 1, 90, c_white, 1);
        with(obj_parent_monster)
        {
            if (collision_line(argument1, yposition, xposition - rest, yposition, id, false, false))
                id.hp -= Player_obj.attack
        }
        break;
    }
    case "right":
    {
        while (i <= nbsprite)
            {
                draw_sprite_ext(spr_laser, frame, xposition + 64, yposition, 1, 1, 90, c_white, 1);
                xposition += 64
                i++
            }
        draw_sprite_general(spr_laser, frame, 0, 0 + (64 - rest), 31, rest, xposition, yposition + 15, 1, 1, 90, c_white, c_white, c_white, c_white, 1);
        draw_sprite_ext(spr_laser_end, frame, xposition + rest, yposition, 1, 1, 270, c_white, 1);
        with(obj_parent_monster)
        {
            if (collision_line(argument1, yposition, xposition + rest, yposition, id, false, false))
                id.hp -= Player_obj.attack
        }
        break;
    }
}


