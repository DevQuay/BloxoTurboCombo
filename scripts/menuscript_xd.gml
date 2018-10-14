keyclick = mouse_check_button(mb_left)
lftsd = obj_leftside
rtsd = obj_rightside
btn = obj_playbutton

if keyclick{
if rtsd.x != (lftsd.x + lftsd.sprite_width-1){
rtsd.x +=2
btn.x +=2
}
}
if !keyclick{
if rtsd.x != lftsd.x{
rtsd.x -=2
btn.x -=2
}
}
