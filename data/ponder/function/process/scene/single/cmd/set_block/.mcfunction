#data modify storage ponder:scene block set from storage ponder:scene cur_cmd.blocks

#say set_block

data modify storage ponder:scene cur_cmd.x set from storage ponder:scene cur_cmd.pos[0]
data modify storage ponder:scene cur_cmd.y set from storage ponder:scene cur_cmd.pos[1]
data modify storage ponder:scene cur_cmd.z set from storage ponder:scene cur_cmd.pos[2]

execute unless entity 1c595-1-c199-0-1 run say no_entity!!!!!!!!!!!!@@#$%$##@$%^$##$#$%^&

execute positioned as 1c595-1-c199-0-1 run function ponder:process/scene/single/cmd/set_block/_ with storage ponder:scene cur_cmd

tellraw @a ["Place Block Success: ",{score:{name:"#success",objective:"ponder.debug"}}]