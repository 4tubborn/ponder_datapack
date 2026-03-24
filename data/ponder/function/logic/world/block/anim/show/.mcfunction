data remove storage ponder:anim cur_block_show
data modify storage ponder:anim cur_block_show set from storage ponder:anim buffer.block_show[0]

execute unless data storage ponder:anim cur_block_show run return run schedule function ponder:logic/world/block/anim/show/interpolate 4t
data remove storage ponder:anim buffer.block_show[0]

execute unless data storage ponder:anim cur_block.ponder_state run data modify storage ponder:anim cur_block_show.ponder_state set value "[]"
function ponder:logic/world/block/anim/show/summon with storage ponder:anim cur_block_show

function ponder:logic/world/block/anim/show/