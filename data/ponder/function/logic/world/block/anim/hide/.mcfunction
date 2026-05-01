data remove storage ponder:anim cur_block_hide
data modify storage ponder:anim cur_block_hide set from storage ponder:anim buffer.block_hide[0]

execute unless data storage ponder:anim cur_block_hide run return run \
scoreboard players set @e[tag=ponder.scene_entity,tag=ponder.anim.hide,tag=ponder.init,type=block_display] ponder.timer.in 4
data remove storage ponder:anim buffer.block_hide[0]

#say hide

function ponder:logic/world/block/anim/hide/get with storage ponder:anim cur_block_hide
data modify storage ponder:anim cur_block_hide.block_state merge from entity 1b5ef-0-0-1-7f3c00000000 item.components."minecraft:custom_data"

#tellraw @a ["data: ",{entity:"1b5ef-0-0-1-7f3c00000000",nbt:"item.components"}]
#data modify storage ponder:anim cur_block_hide.block_state.Name set from storage bs:out block.type
#data modify storage ponder:anim cur_block_hide.block_state.Properties set from storage bs:out block.properties

data modify storage ponder:anim cur_block_hide.direction set from storage ponder:logic block_hide.direction
#data modify storage ponder:utils input.direction.string set from storage ponder:anim cur_block_hide.direction
#execute unless data storage ponder:utils input.direction.string run data modify storage ponder:utils input.direction.string set value "down"
#function ponder:logic/api/utils/direction/string_to_vec_inv_norm
#data modify storage ponder:anim cur_block_hide.direction set from storage ponder:utils output.direction.vec

#tellraw @a [{text:"cur_block: ",color:"red"},{storage:"ponder:anim",nbt:"cur_block_hide"}]

#tellraw @a ["hide: ",{storage:"ponder:anim",nbt:"cur_block_hide"}]

function ponder:logic/world/block/anim/hide/summon with storage ponder:anim cur_block_hide


function ponder:logic/world/block/anim/hide/