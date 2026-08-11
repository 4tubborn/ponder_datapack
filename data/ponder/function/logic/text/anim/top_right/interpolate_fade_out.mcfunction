data merge entity @s {\
    start_interpolation: 0,\
    interpolation_duration: 5,\
    transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f],right_rotation:[0f,0f,0f,1f]}\
}

scoreboard players reset @s ponder.timer
tag @s add ponder.remove
schedule function ponder:logic/text/anim/top_right/remove 5t append