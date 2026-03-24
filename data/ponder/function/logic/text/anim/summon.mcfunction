say text
$execute positioned 0.0 0.0 0.0 run summon text_display ~$(x) ~$(y) ~$(z) {\
    Tags:["ponder.scene_entity","ponder.init"],\
    text:$(text),\
    see_through:true,\
    billboard:center,\
    transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f],right_rotation:[0f,0f,0f,1f]}\
}