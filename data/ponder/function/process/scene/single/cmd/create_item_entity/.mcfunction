data modify storage ponder:logic item_entity set from storage ponder:scene cur_cmd

data remove storage ponder:utils input.direction.string
data modify storage ponder:utils input.direction.string set from storage ponder:scene cur_cmd.motion
execute unless data storage ponder:scene cur_cmd.motion run data modify storage ponder:utils input.direction.string set value "none"
function ponder:logic/api/utils/direction/string_to_vec_motion
data modify storage ponder:logic item_entity.motion set from storage ponder:utils output.direction.vec

function ponder:logic/api/world/entity/item_summon