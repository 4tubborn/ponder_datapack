#data remove storage ponder:scene block_show
#data modify storage ponder:scene block_show.blocks set value []
data modify storage ponder:logic block_show.blocks append from storage ponder:scene cur_cmd.blocks[]

#tellraw @a ["in_storage: ",{storage:"ponder:logic",nbt:block_show}]

#function ponder:process/scene/single/cmd/set_blocks/_