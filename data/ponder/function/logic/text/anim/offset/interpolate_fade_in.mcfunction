tag @n[tag=ponder.in_ponder,type=player] add tu-utils.distance_anchor1
tag @n[tag=ponder.init,type=text_display,tag=ponder.anim.text.offset] add tu-utils.distance_anchor2
function tu-utils:distance/cal
#计算text到玩家的距离
tellraw @a ["distance: ",{score:{name:"#distance",objective:"tu-utils.out"}}]

#通过相似计算出text实际offset_r(offset_r/1=offset/distance)
tellraw @a ["offset: ",{storage:"ponder:logic",nbt:"text"}]

execute store result score x u.variable run data get storage ponder:logic text.offset 1000
scoreboard players operation y u.variable = #distance tu-utils.out

function u.math:x/mult_1000_div_y
#获取offset_r
scoreboard players operation #text.offset_r ponder.tmp = x u.variable

tellraw @a ["scale: ",{score:{name:"#text.offset_r",objective:"ponder.tmp"}}]
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

say offsetttttttttttttttttttttttttttttttttttttttttttt

execute store result storage ponder:anim text.transformation.translation[0] float 0.001 run scoreboard players get #text.offset_r ponder.tmp

tellraw @a ["nbt: ",{storage:"ponder:anim",nbt:"text"}]

execute as @n[tag=ponder.init,tag=ponder.anim.text.offset,type=text_display] run data modify entity @s {} merge from storage ponder:anim text
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
execute as @n[tag=ponder.init,tag=ponder.anim.text.offset,type=block_display] run data modify entity @s {} merge from storage ponder:anim text

#设置位置
execute at @p[tag=ponder.in_ponder] run tp @n[tag=ponder.init,tag=ponder.anim.text.offset,type=text_display] ^ ^ ^1
execute at @p[tag=ponder.in_ponder] run tp @n[tag=ponder.init,tag=ponder.anim.text.offset,type=block_display] ^ ^ ^1.1


#tellraw @a [{text:"transformation: ",color:red},{entity:"@n[type=text_display,tag=ponder.init]",nbt:"transformation"}]
#tellraw @a [{text:"pos: ",color:red},{entity:"@n[type=text_display,tag=ponder.init]",nbt:"Pos"}]

#tellraw @a ["text: ",{storage:"ponder:tmp",nbt:"text"},"\nnbt: ",{entity:"@n[tag=ponder.init,type=text_display]",nbt:"transformation"}]

tag @e[tag=ponder.init,tag=ponder.anim.text.offset,limit=2] remove ponder.init