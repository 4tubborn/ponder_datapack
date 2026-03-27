$data modify storage ponder:scene scene set from storage ponder:template ponder."$(id)"

execute if data storage ponder:scene scene.type run return run function ponder:process/scene/load_single
function ponder:process/scene/load_multi