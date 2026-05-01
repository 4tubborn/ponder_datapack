#execute as @p[tag=ponder.in_ponder] in ponder:ponder run function ponder:logic/world/player/stick
execute if data storage ponder:scene scene.type run return run execute as @p[tag=ponder.in_ponder] at @s run function ponder:process/scene/load_single
execute as @p[tag=ponder.in_ponder] at @s run function ponder:process/scene/load_multi