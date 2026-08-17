data merge entity @s {\
    start_interpolation: 0,\
    interpolation_duration: 5,\
    transformation:{scale:[0f,0f,0f]}\
}

scoreboard players reset @s ponder.timer
tag @s add ponder.remove
scoreboard players set @s ponder.timer.out 5