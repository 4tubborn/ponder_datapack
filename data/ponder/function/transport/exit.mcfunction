#执行者为玩家，在ponder维度
#say exit

tag @s remove ponder.in_ponder
tp @s @e[type=marker,tag=ponder.origin_pos,limit=1]

function ponder:logic/world/player/gamemode/get

#execute at @s run setblock ~ ~ ~ oak_leaves

#scoreboard players set #enabled ponder.timer 0

#清除进入前位置标记
execute as @n[type=marker,tag=ponder.origin_pos] at @s run forceload remove ~ ~
#@e能跨纬度选择实体
kill @e[type=marker,tag=ponder.origin_pos,limit=1]

#防止触发tick检测
advancement grant @s only ponder:process/next
advancement grant @s only ponder:process/tick
advancement grant @s only ponder:process/second
function ponder:logic/rot_cam/tick/exit
function ponder:logic/scal_cam/tick/exit
#清除schedule
schedule clear ponder:logic/ponder/load
schedule clear ponder:logic/ponder/init/
schedule clear ponder:process/init/_

schedule clear ponder:logic/world/block/anim/hide/interpolate
schedule clear ponder:logic/world/block/anim/show/interpolate

schedule clear ponder:process/scene/single/cmd/idle/reset
#后续处理ponder维度，执行维度为ponder
function ponder:logic/ponder/unload