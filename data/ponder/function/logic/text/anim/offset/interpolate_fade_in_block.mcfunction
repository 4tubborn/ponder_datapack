#block
data modify storage ponder:anim text set value {\
    transformation:{\
        translation:[0,0.06,0],\
        scale:[0.01,0.006,0.006],\
    },\
    start_interpolation: 0,\
    interpolation_duration: 5,\
}
execute store result storage ponder:anim text.transformation.scale[0] float 0.001 run scoreboard players get #text.offset_r ponder.tmp
execute as @s run data modify entity @s {} merge from storage ponder:anim text

execute at @p[tag=ponder.in_ponder] run tp @s ^ ^ ^1.1

scoreboard players reset @s ponder.timer.in