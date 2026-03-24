data modify storage ponder:tmp block.id set from entity @s block_state.Name
execute if data entity @s {data:{ponder_state:"[]"}} run return run function ponder:util/block/anim/fall/solidify/__ with storage ponder:tmp block
data modify storage ponder:tmp block.state set from entity @s data.ponder_state
function ponder:util/block/anim/fall/solidify/_ with storage ponder:tmp block