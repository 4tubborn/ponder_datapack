data modify storage ponder:anim buffer.block_move set from storage ponder:logic block_move.blocks

execute unless data storage ponder:logic block_move.duration \
run data modify storage ponder:logic block_move.duration set value 7
execute store result score #duration ponder.tmp run data get storage ponder:logic block_move.duration
function ponder:logic/world/block/anim/move/

data remove storage ponder:logic block_move

execute as @e[tag=ponder.scene_entity,tag=ponder.anim.move,tag=ponder.init,type=block_display] run function ponder:logic/world/block/anim/move/set