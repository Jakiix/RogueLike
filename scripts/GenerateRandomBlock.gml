xPos = argument0
yPos = argument1

randomize();

tmp = irandom(3);

switch(tmp)
{
    case 0:
        if (!instance_position(xPos, yPos, Layout_obj_parent))
            instance_create(xPos, yPos, Layout1_obj);
        break;
    case 1:
        if (!instance_position(xPos, yPos, Layout_obj_parent))
            instance_create(xPos, yPos, Layout2_obj);
        break;
    case 2:
        if (!instance_position(xPos, yPos, Layout_obj_parent))
            instance_create(xPos, yPos, Layout3_obj);
        break;
    case 3:
        if (!instance_position(xPos, yPos, Layout_obj_parent))
            instance_create(xPos, yPos, Layout4_obj);
        break;
}
