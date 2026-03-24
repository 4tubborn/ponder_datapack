data remove storage ponder:anim cur_block
data modify storage ponder:anim cur_block set from storage ponder:anim buffer.block[0]
data remove storage ponder:anim buffer.block[0]
execute unless data storage ponder:anim cur_block run return run schedule function ponder:util/block/anim/fall/interpolate 4t

execute unless data storage ponder:anim cur_block.ponder_state run data modify storage ponder:anim cur_block.ponder_state set value "[]"
function ponder:util/block/anim/fall/summon with storage ponder:anim cur_block

function ponder:util/block/anim/fall/