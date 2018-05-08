xpos = argument0
ypos = argument1
mob = argument2
room_id = argument3

instance = instance_create(xpos, ypos, mob)
instance.room_id = room_id
ds_list_add(Player_obj.list_mob_room, instance.id);
