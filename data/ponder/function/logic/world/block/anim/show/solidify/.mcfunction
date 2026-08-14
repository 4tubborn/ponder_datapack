#say killedd

data modify storage ponder:macro block.id set from entity @s block_state.Name
execute if data entity @s {data:{ponder:{state:"[]"}}} run return run function ponder:logic/world/block/anim/show/solidify/no_state with storage ponder:macro block
data modify storage ponder:macro block.state set from entity @s data.ponder.state
function ponder:logic/world/block/anim/show/solidify/state with storage ponder:macro block