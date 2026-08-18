execute as @s[type=text_display] store result score @s ponder.timer run data get storage ponder:logic text.duration
scoreboard players set @s ponder.timer.in 4
data modify entity @s[type=text_display] text set from storage ponder:logic text.text
#tellraw @a ["score: ",{score:{name:"@n[tag=ponder.scene_entity,tag=ponder.init,type=text_display]",objective:"ponder.timer"}}]
tag @s remove ponder.init