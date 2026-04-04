#被schedule执行，位置在世界出生点（基本在overworld的0,0附近）
#玩家tag
tag @a[tag=ponder.load] add ponder.in_ponder
tag @a[tag=ponder.in_ponder] remove ponder.load

#重置计时器
advancement grant @a[tag=ponder.in_ponder] only ponder:process/next

tellraw @a [{color:"green",text:"====================================="}]

scoreboard players set @a[tag=ponder.in_ponder] ponder.timer 0

scoreboard players set #cur ponder.group 0
data remove storage ponder:logic group

say load
#ponder维度初始化
execute in ponder:ponder positioned 0.0 0.0 0.0 run function ponder:logic/ponder/init/
advancement revoke @a[tag=ponder.in_ponder] only ponder:process/clock

#scoreboard players set #enabled ponder.timer 1
#scoreboard players set #timer ponder.timer 0