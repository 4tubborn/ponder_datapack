data modify storage ponder:anim buffer.block_show set from storage ponder:logic block_show

#data modify storage ponder:scene block set value []

function ponder:logic/world/block/anim/show/

execute as @e[tag=ponder.scene_entity,tag=ponder.init,type=block_display] run scoreboard players set @s ponder.timer 30