$execute positioned $(x) $(y) $(z) facing 0. 0. 0. run tp @s ^$(w) ^ ^
data modify storage u.math:variable context.pos set from entity @s Pos
execute at @s facing 0.0 0.0 0.0 positioned 0.0 0.0 0.0 positioned ^ ^ ^-1 run tp ~0.000005 ~0.000005 ~0.000005
data modify storage u.math:variable context.pos1 set from entity @s Pos
tp @s 0.0 0.0 0.0
