data modify storage ponder:anim buffer.block set from storage ponder:scene block

data modify storage ponder:scene block set value []

function ponder:util/block/anim/fall/

execute as @e[tag=ponder.scene_entity,tag=ponder.init,type=block_display] run scoreboard players set @s ponder.timer 30