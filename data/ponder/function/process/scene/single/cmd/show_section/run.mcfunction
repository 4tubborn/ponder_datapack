data remove storage ponder:tmp buffer.add_block_show

#获取方块
function #bs.block:get_block

data modify storage ponder:utils input.direction.string set from storage ponder:scene cur_cmd.direction
execute unless data storage ponder:tmp input.direction.string run data modify storage ponder:tmp input.direction.string set value "down"

function ponder:logic/api/utils/direction/string_to_vec_inv_norm

data modify storage ponder:tmp buffer.add_block_show.direction set from storage ponder:utils output.direction.vec

data modify storage ponder:tmp buffer.add_block_show.block_state.Name set from storage bs:out block.type
data modify storage ponder:tmp buffer.add_block_show.block_state.Properties set from storage bs:out block.properties
data modify storage ponder:tmp buffer.add_block_show.ponder_state set from storage bs:out block.state

#souce_pos，方块在影子区域的实际坐标
#data modify storage ponder:tmp buffer.add_block_show.source_x set from entity @s Pos[0]
#data modify storage ponder:tmp buffer.add_block_show.source_y set from entity @s Pos[1]
#data modify storage ponder:tmp buffer.add_block_show.source_z set from entity @s Pos[2]

execute unless data storage ponder:tmp buffer.add_block_show.ponder_state run data modify storage ponder:tmp buffer.add_block_show.ponder_state set value "[]"

function ponder:logic/world/block/anim/show/summon_no_pos with storage ponder:tmp buffer.add_block_show

execute store result storage ponder:tmp buffer.add_block_show.x double 1 run data get entity @s Pos[0]

