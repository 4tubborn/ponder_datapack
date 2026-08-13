#stopwatch create a
execute at @p[tag=ponder.in_ponder] positioned ^-1 ^0.6 ^1 run function ponder:logic/text/anim/top_right/summon
#execute store result score #tt ponder.tmp run stopwatch query a 1000
#tellraw @a ["time: ",{score:{name:"#tt",objective:"ponder.tmp"}}]
#stopwatch remove a

execute unless data storage ponder:logic text.duration run data modify storage ponder:logic text.duration set value 30
execute as @n[tag=ponder.scene_entity,tag=ponder.init,type=text_display,tag=ponder.anim.text.top_right] store result score @s ponder.timer run data get storage ponder:logic text.duration
scoreboard players set @n[tag=ponder.scene_entity,tag=ponder.init,type=text_display,tag=ponder.anim.text.top_right] ponder.timer.in 4
tag @n[type=text_display,tag=ponder.init,tag=ponder.anim.text.top_right] remove ponder.init
#schedule function ponder:logic/text/anim/top_right/interpolate_fade_in 4t append