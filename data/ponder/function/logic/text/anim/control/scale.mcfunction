tag @n[tag=ponder.in_ponder,type=player] add tu-utils.distance_anchor1
tag @n[tag=ponder.init,type=text_display,tag=ponder.anim.text.control] add tu-utils.distance_anchor2
function tu-utils:distance/cal
tellraw @a ["distance: ",{score:{name:"#distance",objective:"tu-utils.out"}}]

scoreboard players operation x u.variable = #distance tu-utils.out
scoreboard players operation y u.variable = #scale_multiplier ponder.const
scoreboard players set z u.variable 1000

function u.math:x/fast_mult_y_divmod_z

scoreboard players operation #scale ponder.tmp = x u.variable

tellraw @a ["scale: ",{score:{name:"#scale",objective:"ponder.tmp"}}]

data remove storage ponder:anim text
#先存scale
data modify storage ponder:anim text.transformation.scale set value [0,0,0]

execute store result storage ponder:anim text.transformation.scale[0] float 0.001 run scoreboard players get #scale ponder.tmp
execute store result storage ponder:anim text.transformation.scale[1] float 0.001 run scoreboard players get #scale ponder.tmp
execute store result storage ponder:anim text.transformation.scale[2] float 0.001 run scoreboard players get #scale ponder.tmp

tellraw @a ["scale: ",{storage:"ponder:anim",nbt:"text",color:"red"}]

execute as @n[tag=ponder.init,type=text_display,tag=ponder.anim.text.control] run data modify entity @s {} merge from storage ponder:anim text
tellraw @a ["nbt: ",{entity:"@n[type=text_display,tag=ponder.anim.text.control]",nbt:"interpolation_duration",color:"yellow"}]