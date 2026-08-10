execute if score #unlock_movement ponder.debug matches 1 run return fail
#execute unless dimension ponder:ponder run return fail
#execute unless loaded ~ ~ ~ run return fail

#tellraw @a ["unlock: ",{score:{name:"#unlock_movement",objective:"ponder.debug"}}]

#say stick player

#execute as 1c595-1-8319-0-1 run say as
#execute unless entity 1c595-1-8319-0-1 run return fail

#execute as @n[type=text_display,tag=ponder.camera,tag=ponder.init] run return run tag @s remove ponder.init
gamemode spectator
spectate 1c595-1-8319-0-1