data modify storage ponder:utils input.direction.string set from storage ponder:scene cur_cmd.direction
execute unless data storage ponder:utils input.direction.string run data modify storage ponder:utils input.direction.string set value "down"
function ponder:logic/api/utils/direction/string_to_vec_inv_norm

data modify storage ponder:logic block_show.direction set from storage ponder:utils output.direction.vec


function ponder:logic/api/world/block/anim/show