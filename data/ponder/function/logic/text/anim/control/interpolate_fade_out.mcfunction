data merge entity @s {\
    start_interpolation: 0,\
    interpolation_duration: 5,\
    transformation:{translation:[0f,1f,0f]}\
}

scoreboard players reset @s ponder.timer
#删除text
scoreboard players set @s ponder.timer.out 5