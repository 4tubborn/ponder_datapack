#筛选在from, to之间的点
execute positioned ~-100 ~-100 ~ unless entity @e[type=marker,tag=ponder.utils.section.anchor,limit=2,dx=200,dy=200,dz=100] run return fail
execute positioned ~-100 ~-100 ~-1 unless entity @e[type=marker,tag=ponder.utils.section.anchor,limit=2,dx=200,dy=200,dz=-100] run return fail
execute positioned ~ ~-100 ~-100 unless entity @e[type=marker,tag=ponder.utils.section.anchor,limit=2,dx=100,dy=200,dz=200] run return fail
execute positioned ~-1 ~-100 ~-100 unless entity @e[type=marker,tag=ponder.utils.section.anchor,limit=2,dx=-100,dy=200,dz=200] run return fail
execute positioned ~-100 ~-1 ~-100 unless entity @e[type=marker,tag=ponder.utils.section.anchor,limit=2,dx=200,dy=100,dz=200] run return fail
execute positioned ~-100 ~-1 ~-100 unless entity @e[type=marker,tag=ponder.utils.section.anchor,limit=2,dx=200,dy=-100,dz=200] run return fail

tp @n[type=marker,tag=ponder.utils.section.executer] ~ ~ ~
$execute as @n[type=marker,tag=ponder.utils.section.executer] run $(run)