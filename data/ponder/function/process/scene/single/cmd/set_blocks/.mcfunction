data modify storage ponder:utils input.render_area.mapping_section set from storage ponder:scene cur_cmd.pos
function ponder:logic/api/utils/render_area/map_to_shadow_area_section/
data modify storage ponder:scene cur_cmd.pos set from storage ponder:utils output.render_area.mapped_section

data modify storage ponder:utils input.section.from_to set from storage ponder:scene cur_cmd

tellraw @a ["set_blocks: ",{storage:"ponder:utils",nbt:"input.section.from_to"}]

data modify storage ponder:utils input.section.from_to.run set value "function ponder:process/scene/single/cmd/set_blocks/run with storage ponder:scene cur_cmd"

function ponder:logic/api/utils/section/from_to

schedule function ponder:logic/world/block/anim/show/interpolate 4t