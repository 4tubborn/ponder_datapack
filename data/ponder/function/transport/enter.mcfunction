say enter
summon marker ~ ~ ~ {Tags:["ponder.origin_pos"]}

forceload add ~ ~

#setblock ~ ~ ~ diamond_block
function ponder:util/player/gamemode/store

execute in ponder:ponder run tp @s 0.0 0.0 0.0

tag @s add ponder.load

schedule function ponder:util/ponder/load 1t