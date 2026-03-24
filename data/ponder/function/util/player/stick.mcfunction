execute unless dimension ponder:ponder run return fail
execute if score #unlock_movement ponder.debug matches 1 run return fail

gamemode spectator
spectate @n[tag=ponder.camera,type=text_display,distance=0..]
#tp @s @n[type=marker,tag=ponder.camera,distance=0..]