obj = argument0
xPos = argument1
yPos = argument2

if  obj.x > xPos + 169 and obj.y > yPos + 253 and obj.x < xPos + view_wview[0] - 169 and obj.y < yPos + view_hview[0] - 253
    return true
else
    return false
