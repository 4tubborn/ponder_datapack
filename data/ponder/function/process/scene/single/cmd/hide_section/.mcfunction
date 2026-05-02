data modify storage ponder:logic block_hide.blocks set from storage ponder:scene cur_cmd.blocks

#tellraw @a ["input dir: ",{storage:"ponder:scene",nbt:"cur_cmd.direction"}]

data remove storage ponder:utils input.direction.string
data modify storage ponder:utils input.direction.string set from storage ponder:scene cur_cmd.direction
execute unless data storage ponder:scene cur_cmd.direction run data modify storage ponder:utils input.direction.string set value "up"


function ponder:logic/api/utils/direction/string_to_vec_norm
data modify storage ponder:logic block_hide.direction set from storage ponder:utils output.direction.vec

#tellraw @a ["dir: ",{storage:"ponder:utils",nbt:"output.direction.vec"}]

#say hide啦啦啦啦

function ponder:logic/api/world/block/anim/hide