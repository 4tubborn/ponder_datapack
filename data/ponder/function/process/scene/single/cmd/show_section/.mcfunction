data modify storage ponder:utils input.section.from_to set from storage ponder:scene cur_cmd

#data modify storage ponder:logic block_show set value []

data modify storage ponder:utils input.section.from_to.run set value "function ponder:process/scene/single/cmd/show_section/run"

function ponder:logic/api/utils/section/from_to

schedule function ponder:logic/world/block/anim/show/interpolate 4t