data remove storage ponder:anim cur_block_destory
data modify storage ponder:anim cur_block_destory set from storage ponder:anim buffer.block_destory[0]
data remove storage ponder:anim buffer.block_destory[0]
execute unless data storage ponder:anim cur_block_destory run return 1

function ponder:util/block/destory/_ with storage ponder:anim cur_block_destory

function ponder:util/block/destory/