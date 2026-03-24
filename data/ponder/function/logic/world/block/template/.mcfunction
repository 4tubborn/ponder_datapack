data remove storage ponder:tmp template.cur_block
data modify storage ponder:tmp template.cur_block set from storage ponder:tmp template.block[0]
data remove storage ponder:tmp template.block[0]
execute unless data storage ponder:tmp template.cur_block run return 0

function ponder:util/block/template/offset with storage ponder:tmp template.cur_block

data modify storage ponder:scene block append from storage ponder:tmp template.cur_block

function ponder:util/block/template/