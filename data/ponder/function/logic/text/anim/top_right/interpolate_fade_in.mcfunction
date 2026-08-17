data modify entity @s {} merge value \
{\
    transformation:{\
        scale:[0.25,0.25,0.25],\
    },\
    start_interpolation: 0,\
    interpolation_duration: 5,\
    background:-16777216,\
}

scoreboard players reset @s ponder.timer.in