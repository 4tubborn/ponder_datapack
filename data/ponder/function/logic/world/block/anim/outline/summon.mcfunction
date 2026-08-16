$execute positioned $(x) $(y) $(z) align xyz run summon item_display ~ ~ ~ {\
    Tags:["ponder.scene_entity","ponder.anim.outline","ponder.init"],\
    item:{id:"acacia_log",components:{item_model:"wireframe:wireframe_white",custom_model_data:{colors:[$(color)]}}},\
    transformation:{translation:[0.5f,0.5f,0.5f],left_rotation:[0f,0f,0f,1f],scale:$(scale),right_rotation:[0f,0f,0f,1f]},\
}