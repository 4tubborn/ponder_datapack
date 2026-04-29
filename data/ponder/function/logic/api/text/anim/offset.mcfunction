#tellraw @a {storage:"ponder:scene",nbt:"text.duration"}

#tellraw @a ["text in stor: ",{storage:"ponder:logic",nbt:"text",color:"green"}]


#say duration

execute unless data storage ponder:logic text.offset run data modify storage ponder:logic text.offset set value 3

function ponder:logic/text/anim/offset/summon with storage ponder:logic text

#schedule function ponder:logic/text/anim/offset/interpolate_fade_in 4t append

execute unless data storage ponder:logic text.duration run data modify storage ponder:logic text.duration set value 30
execute as @n[tag=ponder.scene_entity,tag=ponder.init,type=text_display,tag=ponder.anim.text.offset] store result score @s ponder.timer run data get storage ponder:logic text.duration

#tellraw @a ["score: ",{score:{name:"@n[tag=ponder.scene_entity,tag=ponder.init,type=text_display]",objective:"ponder.timer"}}]
tag @e[tag=ponder.init,tag=ponder.anim.text.offset,limit=2] remove ponder.init
#data remove storage ponder:logic text