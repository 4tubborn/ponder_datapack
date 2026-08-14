data modify storage ponder:anim buffer.block_hide set from storage ponder:logic block_hide.blocks

function ponder:logic/world/block/anim/hide/

data remove storage ponder:logic block_hide

execute as @e[tag=ponder.scene_entity,tag=ponder.anim.hide,tag=ponder.init,type=block_display] run function ponder:logic/world/block/anim/hide/set