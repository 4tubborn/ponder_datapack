#Tags: u-utils.distance_anchor1, u-utils.distance_anchor2

function tu-utils:distance/get_distance_component

execute as 1c595-0-0-0-1 at @s run function tu-utils:distance/get_unit_vec

tag @n[tag=tu-utils.distance_anchor1] remove tu-utils.distance_anchor1
tag @n[tag=tu-utils.distance_anchor2] remove tu-utils.distance_anchor2

scoreboard players operation #distance_comp_sum tu-utils.tmp = #distance_comp.x tu-utils.out
scoreboard players operation #distance_comp_sum tu-utils.tmp += #distance_comp.y tu-utils.out
scoreboard players operation #distance_comp_sum tu-utils.tmp += #distance_comp.z tu-utils.out

scoreboard players operation #distance_unit_sum tu-utils.tmp = #unit_vec.x tu-utils.out
scoreboard players operation #distance_unit_sum tu-utils.tmp += #unit_vec.y tu-utils.out
scoreboard players operation #distance_unit_sum tu-utils.tmp += #unit_vec.z tu-utils.out

tellraw @a ["comp: ",{score:{name:"#distance_comp_sum",objective:"tu-utils.tmp"}}," unit: ",{score:{name:"#distance_unit_sum",objective:"tu-utils.tmp"}}]

execute if score #distance_unit_sum tu-utils.tmp matches ..10 run return fail

scoreboard players operation x u.variable = #distance_comp_sum tu-utils.tmp
scoreboard players operation y u.variable = #distance_unit_sum tu-utils.tmp

function u.math:x/mult_1000_div_y


scoreboard players operation #distance tu-utils.out = x u.variable

return 1