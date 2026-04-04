summon text_display ~ ~ ~ {\
    Tags:["ponder.scene_entity","ponder.init","ponder.anim.text.top_right"],\
    text:"",\
    see_through:true,\
    billboard:"center",\
    alignment:"left",\
    transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f],right_rotation:[0f,0f,0f,1f]}\
}
data modify entity @n[type=text_display,tag=ponder.init,tag=ponder.anim.text.top_right] text set from storage ponder:logic text.text