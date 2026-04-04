data remove storage ponder:anim cur_block_show
data modify storage ponder:anim cur_block_show set from storage ponder:anim buffer.block_show[0]

#初始变换
execute unless data storage ponder:anim cur_block_show run return run \
scoreboard players set @e[tag=ponder.scene_entity,tag=ponder.anim.show,tag=ponder.init,type=block_display] ponder.timer.in 4

data remove storage ponder:anim buffer.block_show[0]

execute unless data storage ponder:anim cur_block_show.state run data modify storage ponder:anim cur_block_show.state set value "[]"

data modify storage ponder:anim cur_block_show.direction set from storage ponder:logic block_show.direction
#data modify storage ponder:utils input.direction.string set from storage ponder:anim cur_block_show.direction
#execute unless data storage ponder:utils input.direction.string run data modify storage ponder:utils input.direction.string set value "down"
#function ponder:logic/api/utils/direction/string_to_vec_inv_norm
#data modify storage ponder:anim cur_block_show.direction set from storage ponder:utils output.direction.vec

#tellraw @a [{text:"cur_block: ",color:"red"},{storage:"ponder:anim",nbt:"cur_block_show"}]

function ponder:logic/world/block/anim/show/summon with storage ponder:anim cur_block_show

function ponder:logic/world/block/anim/show/