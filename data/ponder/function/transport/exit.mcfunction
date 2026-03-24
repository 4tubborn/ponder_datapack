say exit
execute in ponder:ponder if loaded ~ ~ ~ run say loaded


scoreboard players set #success ponder.debug 0
execute in ponder:ponder store result score #success ponder.debug run fill 0 0 0 20 20 20 air
#tellraw @a ["success: ",{score:{name:"#success",objective:"ponder.debug"}}]

execute in ponder:ponder store result score #success ponder.debug run kill @n[type=text_display,tag=ponder.camera]
#tellraw @a ["success: ",{score:{name:"#success",objective:"ponder.debug"}}]

tag @s remove ponder.in_ponder
tp @s @e[type=marker,tag=ponder.origin_pos,limit=1]

function ponder:util/player/gamemode/get

#execute at @s run setblock ~ ~ ~ oak_leaves

scoreboard players set #enabled ponder.timer 0

schedule function ponder:util/ponder/unload 1t