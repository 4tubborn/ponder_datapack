#say killeddddddddddddddddddddddddddddddddddddddddddddd

data modify storage ponder:tmp block.id set from entity @s block_state.Name
execute if data entity @s {data:{ponder:{state:"[]"}}} run return run function ponder:logic/world/block/anim/show/solidify/__ with storage ponder:tmp block
data modify storage ponder:tmp block.state set from entity @s data.ponder.state
function ponder:logic/world/block/anim/show/solidify/_ with storage ponder:tmp block