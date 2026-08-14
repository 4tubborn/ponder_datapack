data modify storage ponder:logic block_move set from storage ponder:scene cur_cmd

#tellraw @a ["input dir: ",{storage:"ponder:scene",nbt:"cur_cmd.direction"}]
data remove storage ponder:utils input.direction.string
data modify storage ponder:utils input.direction.string set from storage ponder:scene cur_cmd.direction
execute unless data storage ponder:scene cur_cmd.direction run data modify storage ponder:utils input.direction.string set value "up"

function ponder:logic/api/utils/direction/string_to_vec_norm
data modify storage ponder:logic block_move.direction set from storage ponder:utils output.direction.vec

#execute unless data storage ponder:logic block_move.direction run return run tellraw @a {color:"red",translate:"[Error] move_section: Expect field \"direction\" not be empty"}
#tellraw @a ["dir: ",{storage:"ponder:utils",nbt:"output.direction.vec"}]
say move1

function ponder:logic/api/world/block/anim/move