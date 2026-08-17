advancement revoke @s only ponder:process/tick

#execute if score #enabled ponder.timer matches 1 run scoreboard players add #timer ponder.timer 1
#say tick
#初始化完毕的bde,tde,ide倒计时

execute as @e[type=#ponder:scene_entity,tag=ponder.scene_entity,tag=!ponder.init,distance=..128] run function ponder:logic/clock/tick/_dispatch