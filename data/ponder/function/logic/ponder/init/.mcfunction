#execute unless dimension ponder:ponder run say unless
#若不在ponder维度则到下一tick，（一般来说transport/enter调用后会进入ponder维度，但有时不会及时进入）
#execute unless dimension ponder:ponder run return run schedule function ponder:logic/ponder/init/ 1t
execute in ponder:ponder run tp @e[type=!player,tag=!ponder.origin_pos,distance=0..] 0 -120 0

#execute in ponder:ponder run kill @e[type=!player,tag=!ponder.origin_pos,distance=0..]

#setblock 0 0 0 diamond_block

#say ponder_init
#清除场地
execute store result storage ponder:tmp max_block_modifications int 1 run gamerule max_block_modifications
gamerule max_block_modifications 1048576

fill -5 -5 -5 20 20 20 air
function ponder:logic/ponder/init/restore_gamerule with storage ponder:tmp

#强加载，一直强加载直到exit
forceload add 0 0

#shadow_area
#forceload add 0 -100
#summon marker 0 0 -100 {Tags:["ponder.shadow_area.anchor"],UUID:[I;116117,115097,0,1]}



#清除shadow_area
#fill 0 0 -100 16 16 -90 air


#execute if entity 1c595-1-c199-0-1 run say summoned marker

#相机实体
summon text_display -2 5.5 -2 {Tags:["ponder.camera","ponder.init"],Rotation:[-45,45],UUID:[I;116117,99097,0,1]}
#spectate 1c595-1-8319-0-1 @p[tag=ponder.in_ponder]
#debug
scoreboard players set #unlock_movement ponder.debug 0


# 初始化并清空旧的方块列表
data remove storage ponder:logic block_show
data remove storage ponder:logic block_destory
#tu-utils，用于text的大小变换
summon marker 0.0 0.0 0.0 {Tags:["tu-utils.en"],UUID:[I;116117,0,0,1]}