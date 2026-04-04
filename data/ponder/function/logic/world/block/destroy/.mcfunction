data remove storage ponder:anim cur_block_destroy
data modify storage ponder:anim cur_block_destroy set from storage ponder:anim buffer.block_destroy[0]
data remove storage ponder:anim buffer.block_destroy[0]
execute unless data storage ponder:anim cur_block_destroy run return 1

say destroy

function ponder:logic/world/block/destroy/_ with storage ponder:anim cur_block_destroy

function ponder:logic/world/block/destroy/