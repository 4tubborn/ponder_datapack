$data merge entity @s {\
    start_interpolation: 0,\
    interpolation_duration: 3,\
    transformation:{translation:$(direction),left_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],right_rotation:[0f,0f,0f,1f]}\
}

#say 方块展示实体初始化init

#tag @e[tag=ponder.scene_entity,tag=ponder.init,tag=ponder.anim.hide,type=block_display] remove ponder.init

#tag @e[tag=ponder.scene_entity,tag=ponder.anim.hide,type=block_display] add ponder.remove