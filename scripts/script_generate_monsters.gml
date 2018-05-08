xpos = argument0
ypos = argument1
mob = argument2
room_id = argument3

//top left
instance = script_generate_monster(xpos + 64, ypos + 64, mob, room_id)

//top right
//instance2 = script_generate_monster(xpos + 1300, ypos + 64, mob, room_id)

//down left
//instance3 = script_generate_monster(xpos + 64, view_yview[0] + view_hview[0] - 171 - 64, mob, room_id)

//down right
instance4 = script_generate_monster(xpos + 1300 - 64, view_yview[0] + view_hview[0] - 171 - 64, mob, room_id)

