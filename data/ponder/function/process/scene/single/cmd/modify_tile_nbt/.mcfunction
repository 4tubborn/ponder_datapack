data modify storage ponder:logic modify_tile_nbt set from storage ponder:scene cur_cmd

data modify storage ponder:logic modify_tile_nbt.x set from storage ponder:logic modify_tile_nbt.pos[0]
data modify storage ponder:logic modify_tile_nbt.y set from storage ponder:logic modify_tile_nbt.pos[1]
data modify storage ponder:logic modify_tile_nbt.z set from storage ponder:logic modify_tile_nbt.pos[2]

execute if data storage ponder:scene {cur_cmd:{show_particle:true}} run function ponder:process/scene/single/cmd/modify_tile_nbt/particle with storage ponder:logic modify_tile_nbt
function ponder:process/scene/single/cmd/modify_tile_nbt/_ with storage ponder:logic modify_tile_nbt