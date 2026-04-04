data modify storage ponder:logic text set from storage ponder:scene cur_cmd
execute unless data storage ponder:scene {cur_cmd:{mode:"top_right"}} run return run function ponder:logic/api/text/anim/offset
function ponder:logic/api/text/anim/top_right