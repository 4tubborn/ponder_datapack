#say killedddd

data modify storage ponder:macro block.block set from storage ponder:logic scene_buffer.move_section.block[0]
data remove storage ponder:logic scene_buffer.move_section.block[0]
data modify storage ponder:tmp block_pos set from storage ponder:logic scene_buffer.move_section.direction[0]
data remove storage ponder:logic scene_buffer.move_section.direction[0]
#data modify storage ponder:macro block.block set from entity @s data.ponder.block
#data modify storage ponder:tmp block_pos set from entity @s data.ponder.anim.direction
data modify storage ponder:macro block.x set from storage ponder:tmp block_pos[0]
data modify storage ponder:macro block.y set from storage ponder:tmp block_pos[1]
data modify storage ponder:macro block.z set from storage ponder:tmp block_pos[2]
function ponder:logic/world/block/anim/move/solidify/place with storage ponder:macro block