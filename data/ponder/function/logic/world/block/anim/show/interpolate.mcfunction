

#execute as @e[type=block_display,tag=ponder.utils.group.executer] run say settt
data merge entity @s {\
    start_interpolation: 0,\
    interpolation_duration: 3,\
    transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],right_rotation:[0f,0f,0f,1f]}\
}

scoreboard players reset @s ponder.timer.in


#say 方块展示实体初始化init

#tag @e[tag=ponder.scene_entity,tag=ponder.init,type=block_display] remove ponder.init