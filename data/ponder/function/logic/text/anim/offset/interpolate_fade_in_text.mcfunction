
#text
data modify storage ponder:anim text set value {\
    transformation:{\
        translation:[0,0,0],\
        scale:[0.25,0.25,0.25],\
    },\
    start_interpolation: 0,\
    interpolation_duration: 5,\
    background:-16777216,\
}

#say offsetttttttttttttttttttttttttttttttttttttttttttt

execute store result storage ponder:anim text.transformation.translation[0] float 0.001 run scoreboard players get #text.offset_r ponder.tmp

#tellraw @a ["nbt: ",{storage:"ponder:anim",nbt:"text"}]

execute as @s run data modify entity @s {} merge from storage ponder:anim text

#设置位置
execute at @p[tag=ponder.in_ponder] run tp @s ^ ^ ^1

scoreboard players reset @s ponder.timer.in

#tellraw @a [{text:"transformation: ",color:red},{entity:"@n[type=text_display,tag=ponder.init]",nbt:"transformation"}]
#tellraw @a [{text:"pos: ",color:red},{entity:"@n[type=text_display,tag=ponder.init]",nbt:"Pos"}]

#tellraw @a ["text: ",{storage:"ponder:tmp",nbt:"text"},"\nnbt: ",{entity:"@n[tag=ponder.init,type=text_display]",nbt:"transformation"}]

