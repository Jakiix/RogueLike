xview = argument0
yview = argument1
randomize();
place[0] = 350
place[1] = 350
place[2] = 625
place[3] = 625 + 63
place[4] = 510
place[5] = 510
place[6] = 510 + 63
place[7] = 510 + 63
place[8] = 573 + 63
place[9] = 573 + 63
place[10] = 636 + 63
place[11] = 636 + 63
place[12] = 470
place[13] = 470
place[14] = 470


i = 0
while (i <= 14)
{
    if (!instance_position(xview + 350, yview + place[i], obj_rock))
        rock = instance_create(xview + 350, yview + place[i], obj_rock);
    with (rock)
    {
        index = irandom(6);
        image_index = index;
    }
    if (i % 2 == 0)
        xview += 59;
    else
        xview += 80
    i++
}
