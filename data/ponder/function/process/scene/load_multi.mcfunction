data remove storage ponder:scene cur_scene
data modify storage ponder:scene cur_scene set from storage ponder:scene scene[0]
execute unless data storage ponder:scene cur_scene run return 1
data remove storage ponder:scene scene[0]
function ponder:process/scene/single/next

function ponder:process/scene/load