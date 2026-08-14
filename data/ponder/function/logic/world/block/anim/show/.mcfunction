data remove storage ponder:anim cur_block_show
data modify storage ponder:anim cur_block_show set from storage ponder:anim buffer.block_show[0]

execute unless data storage ponder:anim cur_block_show run return 1
data remove storage ponder:anim buffer.block_show[0]
#其实可以在set_block(s)时就处理好，但这样的话set_blocks又要写一个递归了，索性在show时处理
data modify storage ponder:anim cur_block_show.x set from storage ponder:anim cur_block_show.pos[0]
data modify storage ponder:anim cur_block_show.y set from storage ponder:anim cur_block_show.pos[1]
data modify storage ponder:anim cur_block_show.z set from storage ponder:anim cur_block_show.pos[2]

execute unless data storage ponder:anim cur_block_show.state run data modify storage ponder:anim cur_block_show.state set value "[]"

data modify storage ponder:anim cur_block_show.direction set from storage ponder:logic block_show.direction
#data modify storage ponder:utils input.direction.string set from storage ponder:anim cur_block_show.direction
#execute unless data storage ponder:utils input.direction.string run data modify storage ponder:utils input.direction.string set value "down"
#function ponder:logic/api/utils/direction/string_to_vec_inv_norm
#data modify storage ponder:anim cur_block_show.direction set from storage ponder:utils output.direction.vec

#tellraw @a [{text:"cur_block: ",color:"red"},{storage:"ponder:anim",nbt:"cur_block_show"}]

function ponder:logic/world/block/anim/show/summon with storage ponder:anim cur_block_show

function ponder:logic/world/block/anim/show/