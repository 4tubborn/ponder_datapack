tag @p[tag=ponder.in_ponder] add tu-utils.distance_anchor1
tag @s add tu-utils.distance_anchor2
function #tu-utils:get_distance
#计算text到玩家的距离
#tellraw @a ["distance: ",{score:{name:"#distance",objective:"tu-utils.out"}}]

#通过相似计算出text实际offset_r(offset_r/1=offset/distance)
#tellraw @a ["offset: ",{storage:"ponder:logic",nbt:"text"}]

execute store result score x u.variable run data get storage ponder:logic text.offset 1000
scoreboard players operation y u.variable = #distance tu-utils.out

function u.math:x/mult_1000_div_y
#获取offset_r
scoreboard players operation #text.offset_r ponder.tmp = x u.variable

#tellraw @a ["scale: ",{score:{name:"#text.offset_r",objective:"ponder.tmp"}}]

function ponder:logic/text/anim/offset/interpolate_fade_in_text
#bg
execute on passengers run function ponder:logic/text/anim/offset/interpolate_fade_in_bg