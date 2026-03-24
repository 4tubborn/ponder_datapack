data remove storage ponder:scene cur_cmd
data modify storage ponder:scene cur_cmd set from storage ponder:scene cur_scene[0]
execute unless data storage ponder:scene cur_cmd run return 1
data remove storage ponder:scene cur_scene[0]

function ponder:process/scene/single/decode