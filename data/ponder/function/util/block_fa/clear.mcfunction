execute in ponder:ponder run fill -10 -10 -10 20 20 20 air

say clear

kill @e[type=!player,tag=!ponder.origin_pos,distance=0..]

# 初始化并清空旧的方块列表
data modify storage ponder:scene block set value []
data modify storage ponder:scene destory set value []