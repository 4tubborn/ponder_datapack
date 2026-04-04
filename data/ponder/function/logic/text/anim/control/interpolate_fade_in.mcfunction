

#插值
data modify entity @s {} merge value {\
    start_interpolation: 0,\
    interpolation_duration: 5,\
    transformation:{translation:[0f,0f,0f]}\
}

scoreboard players reset @s ponder.timer.in

#tellraw @a ["text: ",{storage:"ponder:tmp",nbt:"text"},"\nnbt: ",{entity:"@n[tag=ponder.init,type=text_display]",nbt:"transformation"}]