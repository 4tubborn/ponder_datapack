data modify storage ponder:logic modify_block set from storage ponder:scene cur_cmd

data modify storage ponder:logic modify_block.x set from storage ponder:logic modify_block.pos[0]
data modify storage ponder:logic modify_block.y set from storage ponder:logic modify_block.pos[1]
data modify storage ponder:logic modify_block.z set from storage ponder:logic modify_block.pos[2]

execute if data storage ponder:scene {cur_cmd:{show_particle:true}} run function ponder:process/scene/single/cmd/modify_block/particle
function ponder:process/scene/single/cmd/modify_block/_ with storage ponder:logic modify_block