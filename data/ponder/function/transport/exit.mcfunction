#执行者为玩家，在ponder维度
say exit

tag @s remove ponder.in_ponder
tp @s @e[type=marker,tag=ponder.origin_pos,limit=1]

function ponder:logic/world/player/gamemode/get

advancement grant @s only ponder:process/next

#execute at @s run setblock ~ ~ ~ oak_leaves

#scoreboard players set #enabled ponder.timer 0

#清除进入前位置标记
execute as @n[type=marker,tag=ponder.origin_pos] at @s run forceload remove ~ ~
#@e能跨纬度选择实体
kill @e[type=marker,tag=ponder.origin_pos,limit=1]

#后续处理ponder维度，执行位置在世界出生点（比如overworld）
schedule function ponder:logic/ponder/unload 1t