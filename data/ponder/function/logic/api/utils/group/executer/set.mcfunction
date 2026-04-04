execute in ponder:ponder as @e[type=#ponder:scene_entity,tag=ponder.scene_entity,distance=0..] \
if score @s ponder.group = #cand ponder.group run tag @s add ponder.utils.group.executer


tellraw @a ["cand: ",{score:{name:"#cand",objective:"ponder.group"}}]
say en????!!!!!!!!!


execute in ponder:ponder as @e[type=block_display,] \
run tellraw @a ["group: ",{score:{name:"@s",objective:"ponder.group"}}]
execute in ponder:ponder as @e[type=#ponder:scene_entity,tag=ponder.scene_entity,distance=0..] \
if score @s ponder.group = #cand ponder.group run say settt