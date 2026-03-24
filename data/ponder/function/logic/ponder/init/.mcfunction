execute unless dimension ponder:ponder run say unless

execute unless dimension ponder:ponder run return run schedule function ponder:logic/ponder/init/ 1t
say init

execute store result storage ponder:tmp max_block_modifications int 1 run gamerule max_block_modifications
gamerule max_block_modifications 1048576

fill -20 -20 -20 20 20 20 air
function ponder:logic/ponder/init/restore_gamerule with storage ponder:tmp

forceload add 0 0

scoreboard players set #unlock_movement ponder.debug 0


kill @e[type=!player,tag=!ponder.origin_pos,distance=0..]

# 初始化并清空旧的方块列表
data modify storage ponder:scene block set value []
data modify storage ponder:scene destory set value []

summon marker 0.0 0.0 0.0 {Tags:["tu-utils.en"],UUID:[I;116117,0,0,1]}