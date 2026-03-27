data modify storage ponder:utils output.render_area.mapped_section set from storage ponder:utils input.render_area.mapping_section

execute store result score #ra.z ponder.utils.in run data get storage ponder:utils input.render_area.mapping_section[2]
function ponder:logic/utils/render_area/map_to_shadow_area/
execute store result storage ponder:utils output.render_area.mapped_section[2] int 1 run scoreboard players get #sa.z ponder.utils.out

execute store result score #ra.z ponder.utils.in run data get storage ponder:utils input.render_area.mapping_section[5]
function ponder:logic/utils/render_area/map_to_shadow_area/
execute store result storage ponder:utils output.render_area.mapped_section[5] int 1 run scoreboard players get #sa.z ponder.utils.out