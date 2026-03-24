tag @n[tag=ponder.in_ponder,type=player] add tu-utils.distance_anchor1
tag @n[tag=ponder.init,type=text_display] add tu-utils.distance_anchor2
function tu-utils:distance/cal
tellraw @a ["distance: ",{score:{name:"#distance",objective:"tu-utils.out"}}]


scoreboard players operation x u.variable = #distance tu-utils.out
scoreboard players operation y u.variable = #scale_multiplier ponder.const
scoreboard players set z u.variable 1000

function u.math:x/fast_mult_y_divmod_z

scoreboard players operation #scale tu-utils.tmp = x u.variable

tellraw @a ["scale: ",{score:{name:"#scale",objective:"tu-utils.tmp"}}]

data modify storage ponder:anim text.transformation.scale set value [0,0,0]

execute store result storage ponder:anim text.transformation.scale[0] float 0.001 run scoreboard players get #scale tu-utils.tmp
execute store result storage ponder:anim text.transformation.scale[1] float 0.001 run scoreboard players get #scale tu-utils.tmp
execute store result storage ponder:anim text.transformation.scale[2] float 0.001 run scoreboard players get #scale tu-utils.tmp

data modify storage ponder:anim text merge value {\
    start_interpolation: 0,\
    interpolation_duration: 5,\
    background:-16777216,\
}

execute as @n[tag=ponder.init,type=text_display] run data modify entity @s {} merge from storage ponder:anim text

#tellraw @a ["text: ",{storage:"ponder:tmp",nbt:"text"},"\nnbt: ",{entity:"@n[tag=ponder.init,type=text_display]",nbt:"transformation"}]

tag @n[tag=ponder.scene_entity,tag=ponder.init,type=text_display] remove ponder.init