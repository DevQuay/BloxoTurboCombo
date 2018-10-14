keyclick = mouse_check_button(mb_left)
colbox = point_in_rectangle(mouse_x,mouse_y,obj_colrectopl.x,obj_colrectopl.y,obj_colrecbotr.x,obj_colrecbotr.y)
lftsd = obj_leftside
rtsd = obj_rightside
btn1 = obj_playbutton
btn2 = obJ_optionsbutton
btnhspd = 15
xdist = (lftsd.x + rtsd.sprite_width)
offset = 75
offset2 = 350
if colbox{
    if !rtsd.x <xdist{
        rtsd.x +=btnhspd
        btn1.x +=btnhspd
        btn2.x +=btnhspd
    }
    if rtsd.x > xdist-offset{
        rtsd.x = xdist-offset
        btn1.x = rtsd.x+offset2
        btn2.x = rtsd.x+offset2
    }
}
if !colbox{
        if rtsd.x > lftsd.x{
            rtsd.x -=btnhspd
            btn1.x -=btnhspd
            btn2.x -=btnhspd
        }
        else {
            rtsd.x = lftsd.x
            btn1.x = rtsd.x +offset2
            btn2.x = rtsd.x +offset2
        }
}
