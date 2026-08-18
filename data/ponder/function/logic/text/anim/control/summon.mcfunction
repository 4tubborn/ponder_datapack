#say summoned TEXT DISPLAY!!!!!!!!!!!!!!!!!!!!!!
#直接用宏生成文本了，毕竟坐标也用了宏
$summon text_display $(x) $(y) $(z) {\
    Tags:["ponder.scene_entity","ponder.init","ponder.anim.text.control","ponder.anim.cam_moving"],\
    text:$(buffered_text),\
    see_through:true,\
    billboard:"center",\
    alignment:"center",\
    background:-16777216,\
    teleport_duration:1,\
    transformation:{translation:[0f,1f,0f],left_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f],right_rotation:[0f,0f,0f,1f]}\
}
#rotate @n[type=text_display,tag=ponder.anim.text.offset] facing entity @p[tag=ponder.in_ponder] eyes