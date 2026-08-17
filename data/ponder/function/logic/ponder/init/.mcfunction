#execute unless dimension ponder:ponder run say unless
#若不在ponder维度则到下一tick，（一般来说transport/enter调用后会进入ponder维度，但有时不会及时进入）
#stopwatch create a
execute unless dimension ponder:ponder run return run schedule function ponder:logic/ponder/load 1t replace
execute unless loaded 0 0 0 run return run schedule function ponder:logic/ponder/load 1t replace
#execute store result score #tt ponder.tmp run stopwatch query a 1000
#tellraw @a ["time: ",{score:{name:"#tt",objective:"ponder.tmp"}}]
#stopwatch remove a

#say init!!!!!!!!

#tp @e[type=!player,tag=!ponder.origin_pos,distance=0..] 0 -200 0

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

#execute if entity 1c595-1-c199-0-1 run say summoned marker

#相机实体
summon text_display -2 5.5 -2 {Tags:["ponder.camera","ponder.init"],Rotation:[-45,45],UUID:[I;116117,99097,0,1],interpolation_duration:1}
#相机旋转锚点
summon text_display 0.0 0.0 0.0 {Tags:["ponder.rot_cam.anchor"],UUID:[I;116117,97110,0,1],interpolation_duration:1}

#用于获取block
#"1b5ef-0-0-1-7f3c00000000" po,,bl,
summon item_display 0.0 0.0 0.0 {\
    transformation:{translation:[0,0,0],left_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f],right_rotation:[0f,0f,0f,1f]},\
    Tags:["ponder.scene_entity","ponder.item_getter"],\
    UUID:[I;112111,0,98108,0]\
}
#debug
scoreboard players set #unlock_movement ponder.debug 0

# 初始化并清空旧的方块列表
data remove storage ponder:logic block_show
data remove storage ponder:logic block_destory
#tu-utils，用于text的大小变换
summon marker 0.0 0.0 0.0 {Tags:["tu-utils.en"],UUID:[I;116117,0,0,1]}
#radius，用于scal/rot_cam
scoreboard players set #radius ponder.scene.cam_rot 5898

scoreboard players set #cur ponder.group 0
data remove storage ponder:logic group
#show_section,show_text等数据的缓冲列表
data remove storage ponder:logic scene_buffer
#场地初始化好了之后再设置玩家数据
function ponder:logic/ponder/init/player
#开始初始化ponder加载模式（multi/single），然后触发遍历ponder api
function ponder:process/init/_