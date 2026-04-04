#data modify storage ponder:scene block set from storage ponder:scene cur_cmd.blocks

#say set_block

data modify storage ponder:logic block_show.blocks append value {}
data modify storage ponder:logic block_show.blocks[-1] set from storage ponder:scene cur_cmd.block