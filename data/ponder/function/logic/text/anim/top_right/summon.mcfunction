$summon text_display ^ ^ ^1 {\
    Tags:["ponder.scene_entity","ponder.init","ponder.anim.text.top_right"],\
    text:$(text),\
    see_through:true,\
    billboard:"center",\
    alignment:"left",\
    transformation:{translation:[$(x),$(y),0f],left_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f],right_rotation:[0f,0f,0f,1f]}\
}

#tellraw @a ["text: ",{entity:"@n[type=text_display,tag=ponder.init,tag=ponder.anim.text.top_right]",nbt:"transformation.scale"}]