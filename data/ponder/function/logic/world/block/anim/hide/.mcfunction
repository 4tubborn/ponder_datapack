data remove storage ponder:anim cur_block_pos
data modify storage ponder:anim cur_block_pos set from storage ponder:anim buffer.block_hide[0]

execute unless data storage ponder:anim cur_block_pos run return 1
data remove storage ponder:anim buffer.block_hide[0]

data modify storage ponder:anim cur_block_hide.x set from storage ponder:anim cur_block_pos[0]
data modify storage ponder:anim cur_block_hide.y set from storage ponder:anim cur_block_pos[1]
data modify storage ponder:anim cur_block_hide.z set from storage ponder:anim cur_block_pos[2]
#say hide
function ponder:logic/utils/block/get/ with storage ponder:anim cur_block_hide
data modify storage ponder:anim cur_block_hide.block_state.Name set from storage bs:out block.type
data modify storage ponder:anim cur_block_hide.block_state.Properties set from storage bs:out block.properties

#tellraw @a ["data: ",{entity:"1b5ef-0-0-1-7f3c00000000",nbt:"item.components"}]
#data modify storage ponder:anim cur_block_hide.block_state.Name set from storage bs:out block.type
#data modify storage ponder:anim cur_block_hide.block_state.Properties set from storage bs:out block.properties

#data modify storage ponder:anim cur_block_hide.direction set from storage ponder:logic block_hide.direction

data modify storage ponder:logic scene_buffer.hide_section.direction append from storage ponder:logic block_hide.direction
#tellraw @a [{text:"cur_block: ",color:"red"},{storage:"ponder:anim",nbt:"cur_block_hide"}]

#tellraw @a ["hide: ",{storage:"ponder:anim",nbt:"cur_block_hide"}]

function ponder:logic/world/block/anim/hide/summon with storage ponder:anim cur_block_hide


function ponder:logic/world/block/anim/hide/