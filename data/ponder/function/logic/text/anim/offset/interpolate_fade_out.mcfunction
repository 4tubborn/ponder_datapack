data merge entity @s {\
    start_interpolation: 0,\
    interpolation_duration: 5,\
    transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f],right_rotation:[0f,0f,0f,1f]}\
}

scoreboard players set @s ponder.timer -1
tag @s add ponder.remove
tag @n[type=block_display,tag=ponder.anim.text.offset] add ponder.remove
schedule function ponder:logic/text/anim/offset/remove 5t append