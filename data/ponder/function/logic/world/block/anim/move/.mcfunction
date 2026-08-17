#buffer是blocks，坐标列表
data remove storage ponder:anim cur_block_pos
data modify storage ponder:anim cur_block_pos set from storage ponder:anim buffer.block_move[0]

execute unless data storage ponder:anim cur_block_pos run return 1
data remove storage ponder:anim buffer.block_move[0]

#say move

data modify storage ponder:anim cur_block_move.x set from storage ponder:anim cur_block_pos[0]
data modify storage ponder:anim cur_block_move.y set from storage ponder:anim cur_block_pos[1]
data modify storage ponder:anim cur_block_move.z set from storage ponder:anim cur_block_pos[2]

function ponder:logic/utils/block/get/ with storage ponder:anim cur_block_move
data modify storage ponder:anim cur_block_move.block_state.Name set from storage bs:out block.type
data modify storage ponder:anim cur_block_move.block_state.Properties set from storage bs:out block.properties
#type[state]{nbt}
data modify storage ponder:anim cur_block_move.block set from storage bs:out block.block

#tellraw @a ["data: ",{entity:"1b5ef-0-0-1-7f3c00000000",nbt:"item.components"}]
#data modify storage ponder:anim cur_block_move.block_state.Name set from storage bs:out block.type
#data modify storage ponder:anim cur_block_move.block_state.Properties set from storage bs:out block.properties

data modify storage ponder:anim cur_block_move.direction set from storage ponder:logic block_move.direction
data modify storage ponder:anim cur_block_move.duration set from storage ponder:logic block_move.duration
#data modify storage ponder:utils input.direction.string set from storage ponder:anim cur_block_move.direction
#execute unless data storage ponder:utils input.direction.string run data modify storage ponder:utils input.direction.string set value "down"
#function ponder:logic/api/utils/direction/string_to_vec_inv_norm
#data modify storage ponder:anim cur_block_move.direction set from storage ponder:utils output.direction.vec

#tellraw @a [{text:"cur_block: ",color:"red"},{storage:"ponder:anim",nbt:"cur_block_move"}]

#tellraw @a ["move: ",{storage:"ponder:anim",nbt:"cur_block_move"}]

function ponder:logic/world/block/anim/move/summon with storage ponder:anim cur_block_move


function ponder:logic/world/block/anim/move/